import 'package:figma_vars_to_dart/services/parser/entities.dart';

class ParserService {
  (List<Collection>, List<Variable>) parse(Map<String, dynamic> json) {
    final collections = json['variableCollections'] as Map<String, dynamic>;
    final variables = json['variables'] as Map<String, dynamic>;

    final collectionsParsed = collections.values
        .map((value) => Collection.fromJson(value as Map<String, dynamic>))
        .toList();

    final variablesParsed =
        variables.values.map((value) => Variable.fromJson(value as Map<String, dynamic>)).toList();

    return (collectionsParsed, variablesParsed);
  }
}
