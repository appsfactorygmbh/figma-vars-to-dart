import 'dart:convert';
import 'dart:io';

import 'package:figma_vars_to_dart/services/figma/api_parser.dart';
import 'package:figma_vars_to_dart/services/figma/figma_entities.dart';
import 'package:figma_vars_to_dart/services/logger/logger.dart';
import 'package:figma_vars_to_dart/services/parser/code_entities.dart';
import 'package:figma_vars_to_dart/services/services.dart';
import 'package:test/test.dart';

void main() {
  late FigmaResponse figmaResponse;
  final logger = LoggerService();

  setUpAll(() {
    // contains color_primitives, color_semantics collections
    // color semantics imports color_primitives and has light and dark modes
    final text = File('example_response.json').readAsStringSync();
    final json = jsonDecode(text);
    figmaResponse = parseJsonFromApi(
      json,
      variableOverrides: {},
      collectionOverrides: {},
    );
  });

  test('parser result should not be empty', () async {
    final classes = ParserService(logger: logger).parse(figmaResponse);

    final colorPrimitives = classes[0];
    final colorSemantics = classes[1];

    expect(colorPrimitives.name, 'color primitives');
    expect(colorSemantics.name, 'color semantics');
  });

  test('parser result should parse class fields', () async {
    final classes = ParserService(logger: logger).parse(figmaResponse);

    final colorPrimitives = classes[0];
    final colorSemantics = classes[1];
    expect(
      colorPrimitives.fields.map((f) => f.name),
      containsAll(['pink', 'white', 'blue']),
    );
    expect(
      colorPrimitives.fields.map((f) => f.type).toSet(),
      {'Color'},
    );

    expect(
      colorPrimitives.fields.toList()[0],
      ClassField(
        name: 'white',
        type: 'Color',
        valuesByMode: {
          'value': VariableValue.hardcoded('Color(0xFFF2ECEC)'),
        },
      ),
    );

    expect(
      colorSemantics.fields.map((f) => f.name).toList(),
      [
        'background',
        'button primary',
      ],
    );
    expect(
      colorSemantics.fields.map((f) => f.type).toSet(),
      {'Color'},
    );
    expect(
      colorSemantics.fields.toList()[0],
      ClassField(
        name: 'background',
        type: 'Color',
        valuesByMode: {
          'light': VariableValue.reference('color primitives', 'white'),
          'dark': VariableValue.reference('color primitives', 'black'),
        },
      ),
    );
  });
}
