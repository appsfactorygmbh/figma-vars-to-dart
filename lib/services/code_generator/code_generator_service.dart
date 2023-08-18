import '../parser/entities.dart';
import 'code_generator.dart';
import 'string_ext.dart';

class CodeGeneratorService {
  List<WriteTask> generateCode(
    List<Variable> variables,
    List<Collection> collections,
    String directoryName,
  ) {
    final context = <String, dynamic>{};

    final tasks = collections.map((collection) {
      final fileName = '${collection.name.toLowerCase()}.dart';

      final content = _getFileContent(
        context,
        variables,
        collection,
        collections,
        directoryName,
      );

      return WriteTask(
        fileName,
        content,
      );
    });

    return [
      ...tasks,
      WriteTask(
        '$directoryName.dart',
        tasks.map((task) => 'export \'${task.filePath}\';').join('\n'),
      ),
    ];
  }

  String _getFileContent(
    Map<String, dynamic> context,
    List<Variable> variables,
    Collection collection,
    List<Collection> collections,
    String directoryName,
  ) {
    final members = _buildMembersList(variables, collection, collections);

    final className = collection.name.pascalCase().escapeKeywords();

    int totalDependenciesCounter = 0;
    final membersJoined = members
        .map((member) => '  final ${member.type} ${member.name};')
        .join('\n');
    final constructorParams =
        members.map((member) => '  required this.${member.name},').join('\n');

    final modeFactories = collection.modes.map(_sanitizeModeName).map((mode) {
      final factoryConstructorParams = members
          .map((member) =>
              '  ${member.name}: ${member.valuesByMode[mode.modeId]},')
          .toList();
      final paramsSorted = factoryConstructorParams.join('\n');

      final dependencies = members
          .map((member) => member.valuesByMode[mode.modeId] as String)
          .where(isReference)
          .map((dependingMember) => dependingMember.split('.')[0])
          .map((dependency) =>
              '${dependency.capitalizeFirstLetter().escapeKeywords()} $dependency,')
          .toList();

      final dependenciesUnique = [
        ...{...dependencies}
      ].join('\n');

      totalDependenciesCounter += dependenciesUnique.length;
      final factoryConstructorName = mode.name.camelCase().escapeKeywords();
      return 'factory $className.$factoryConstructorName($dependenciesUnique) => $className(\n$paramsSorted\n);';
    }).join('\n');

    final constructor = '''
$className ({
  $constructorParams
});
''';

    final content = '''
import 'package:flutter/widgets.dart';
${totalDependenciesCounter > 0 ? "import '$directoryName.dart';" : ''}
    
class $className {
$membersJoined

$constructor
$modeFactories
}
    ''';
    return content;
  }

  Mode _sanitizeModeName(mode) {
    if (mode.name == 'Mode 1') {
      return mode.copyWith(name: 'create');
    } else {
      return mode;
    }
  }

  bool isReference(value) {
    return !value.contains(' ') &&
        value.contains('.') &&
        value.split('.')[0] != 'Color';
  }

  List<({String name, String type, Map<String, String> valuesByMode})>
      _buildMembersList(List<Variable> variables, Collection collection,
          List<Collection> collections) {
    final members = variables
        .where((variable) => variable.variableCollectionId == collection.id)
        .map(
          (variable) => getCodeFor(
            variable,
            collection,
            variables,
            collections,
          ),
        )
        .toList();
    return members;
  }

  ({String type, String name, Map<String, String> valuesByMode}) getCodeFor(
    Variable variable,
    Collection collection,
    List<Variable> variables,
    List<Collection> collections,
  ) {
    final type = switch (variable.resolvedType) {
      VariableType.float => 'double',
      VariableType.color => 'Color',
      VariableType.string => 'String',
      VariableType.boolean => 'bool',
    };
    final name = variable.name.camelCase().escapeKeywords();
    final valuesByMode = {
      for (final m in collection.modes)
        m.modeId: getValueBy(
          m.modeId,
          variable,
          collection,
          variables,
          collections,
        ),
    };

    return (
      type: type,
      name: name,
      valuesByMode: valuesByMode,
    );
  }

  String getValueBy(
    String modeId,
    Variable variable,
    Collection collection,
    List<Variable> variables,
    List<Collection> collections,
  ) {
    String result;
    final selectedValue = variable.valuesByMode[modeId];
    if (selectedValue == null) return 'throw "could not find value"';
    if (selectedValue is Map && selectedValue['type'] == 'VARIABLE_ALIAS') {
      final id = selectedValue['id'];
      try {
        final variableEntry =
            variables.firstWhere((element) => element.id == id);

        final collectionName = collections
            .firstWhere(
                (element) => element.id == variableEntry.variableCollectionId)
            .name;
        final dependencyName = collectionName.camelCase().escapeKeywords();

        final referencedName = variableEntry.name.camelCase().escapeKeywords();

        result = '$dependencyName.$referencedName';
      } catch (_) {
        result = 'throw "not found"';
      }
    } else {
      result = switch (variable.resolvedType) {
        VariableType.color =>
          _formatColor(selectedValue as Map<String, dynamic>),
        VariableType.float || VariableType.boolean => selectedValue.toString(),
        VariableType.string =>
          '"${selectedValue.toString().escapeSingleAndDoubleQuotes()}"',
      };
    }
    return result;
  }

  String _formatColor(Map<String, dynamic> json) {
    if (json['a'] == null) return 'throw 0';

    final a = (json['a'] * 255).round();
    final r = (json['r'] * 255).round();
    final g = (json['g'] * 255).round();
    final b = (json['b'] * 255).round();

    final value = a.toHex() + r.toHex() + g.toHex() + b.toHex();

    final color = 'Color(0x$value)';

    return color;
  }
}
