import 'package:figma_vars_to_dart/services/code_generator/string_ext.dart';

import '../code_generator/formatter.dart';
import '../figma/figma_entities.dart';
import '../logger/logger.dart';
import 'code_entities.dart';

class ParserService {
  final LoggerService logger;

  ParserService({required this.logger});
  List<CodeClass> parse(FigmaResponse response) {
    final allVariables = response.variables;
    final allCollections = response.collections;
    final collectionsById = {
      for (final collection in allCollections) collection.id: collection
    };
    final variablesById = {
      for (final variable in allVariables)
        variable.id: (
          variable,
          collectionsById[variable.variableCollectionId]!.name,
        ),
    };

    ClassField? mapField(FigmaVariable variable) {
      final type = mapType(variable);
      final name = variable.name.normalize();

      final modes = collectionsById[variable.variableCollectionId]!.modes;

      VariableValue? map(dynamic input, FigmaMode mode) {
        if (input is Map && input['type'] == 'VARIABLE_ALIAS') {
          final id = input['id'];
          dynamic result = variablesById[id];
          if (result != null) {
            final (variable, collectionClassName) =
                result as (FigmaVariable, String);
            return VariableValue.reference(
              collectionClassName.normalize(),
              variable.name.normalize(),
            );
          } else {
            logger.log('Could not find this variable $id');
            return null;
          }
        } else {
          return VariableValue.hardcoded(
              _parseHardcodedValue(variable, mode.modeId));
        }
      }

      final values = {
        for (final mode in modes)
          sanitizeModeName(mode.name):
              map(variable.valuesByMode[mode.modeId], mode)
      };

      if (values.containsValue(null)) {
        return null;
      } else {
        return ClassField(
          type: type,
          name: name,
          valuesByMode: {
            for (final pair in values.entries) pair.key: pair.value!
          },
        );
      }
    }

    CodeClass mapClass(FigmaCollection collection) {
      final mappedName = switch (collection.name) {
        'colors' => 'FigmaColors',
        _ => collection.name.normalize(),
      };

      final selectedFields = allVariables
          .where((variable) => variable.variableCollectionId == collection.id)
          .toList();

      final mapped = selectedFields.map((field) {
        return mapField(field);
      }).where((field) => field != null);

      return CodeClass(
        fileName: '${collection.name.snakeCase()}.dart',
        name: mappedName,
        fields: {for (final field in mapped) field!},
      );
    }

    return allCollections.map(mapClass).toList();
  }

  String sanitizeModeName(String modeName) {
    if (modeName == 'Mode 1') return 'value';
    return modeName.normalize();
  }

  String mapType(FigmaVariable variable) {
    final type = switch (variable.resolvedType) {
      FigmaVariableType.float => 'double',
      FigmaVariableType.color => 'Color',
      FigmaVariableType.string => 'String',
      FigmaVariableType.boolean => 'bool',
    };
    return type;
  }

  String _parseHardcodedValue(FigmaVariable variable, String mode) {
    final valueForMode = variable.valuesByMode[mode];

    final text = switch (variable.resolvedType) {
      FigmaVariableType.color => formatColor(
          valueForMode as Map<String, dynamic>,
        ),
      FigmaVariableType.float ||
      FigmaVariableType.boolean =>
        valueForMode.toString(),
      FigmaVariableType.string =>
        '"${valueForMode.toString().escapeSingleAndDoubleQuotes()}"',
    };
    return text;
  }
}
