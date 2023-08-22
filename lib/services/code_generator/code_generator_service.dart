import 'package:figma_vars_to_dart/services/code_generator/string_ext.dart';

import '../parser/code_entities.dart';
import '../services.dart';

class CodeGeneratorService {
  List<WriteTask> generateFiles(
    List<CodeClass> classes,
    String directoryName,
  ) {
    final tasks = classes.map((codeClass) {
      final content = _getFileContent(
        codeClass,
        directoryName,
      );

      return WriteTask(
        codeClass.fileName,
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
    CodeClass codeClass,
    String directoryName,
  ) {
    final className = codeClass.name.pascalCase().escapeKeywords();
    final classFields = codeClass.fields;
    int totalDependenciesCounter = 0;

    final fieldsJoined = classFields
        .map((field) => '  final ${field.type.pascalCase()} ${field.name.camelCase()};')
        .join('\n');

    final constructorParams =
        classFields.map((field) => '  required this.${field.name.camelCase()},').join('\n');

    final modes = codeClass.fields.expand((f) => f.valuesByMode.keys);
    final modesUnique = [
      ...{...modes}
    ];

    final factoryConstructors = modesUnique.map((mode) {
      final factoryConstructorParams = classFields.map((field) {
        final assignedValue = field.valuesByMode[mode]!.when(
          hardcoded: (text) => text,
          reference: (type, field) => '${type.camelCase()}.${field.camelCase()}',
        );
        return '  ${field.name.camelCase()}: $assignedValue,';
      }).toList();

      final paramsSorted = factoryConstructorParams.join('\n');

      final dependencies = codeClass.fields
          .map(
            (field) => field.valuesByMode[mode]!.when(
              hardcoded: (_) => null,
              reference: (type, field) => type,
            ),
          )
          .where((type) => type != null)
          .map(
            (type) => '${type!.pascalCase()} ${type.camelCase()}',
          );

      final dependenciesUnique = [
        ...{...dependencies}
      ].join('\n');

      totalDependenciesCounter += dependenciesUnique.length;
      final factoryConstructorName = mode.camelCase().escapeKeywords();
      return 'factory $className.$factoryConstructorName($dependenciesUnique) => $className(\n$paramsSorted\n);';
    }).join('\n\n');

    final defaultConstructor = '''
$className ({
  $constructorParams
});
''';

    final importIfNeeded =
        totalDependenciesCounter > 0 ? "import '$directoryName.dart';" : '';

    final dartFileContent = '''
import 'package:flutter/widgets.dart';
$importIfNeeded
    
class $className {
$fieldsJoined

$defaultConstructor
$factoryConstructors
}
    ''';
    return dartFileContent;
  }
}
