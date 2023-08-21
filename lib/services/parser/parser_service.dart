import 'package:figma_vars_to_dart/services/parser/entities.dart';

class ParserService {
  List<Collection> parse(Map<String, dynamic> json) {
    final collectionsJson = json['variableCollections'] as Map<String, dynamic>;
    final variablesJson = json['variables'] as Map<String, dynamic>;

    final collections = collectionsJson.values
        .map((value) => Collection.fromJson(value as Map<String, dynamic>))
        .toList();

    final variables = variablesJson.values
        .map(
          (value) => Variable.fromJson(value as Map<String, dynamic>),
        )
        .toList();

    final collectionsById = {
      for (final collection in collections) collection.id: collection
    };
    return collections.map((collection) {
      final theseVariables = variables
          .where((variable) => variable.variableCollectionId == collection.id)
          .toList();

      final dependencies = theseVariables
          .where(
            (variable) => variable.valuesByMode.values
                .any((value) => value['type'] == 'VARIABLE_ALIAS'),
          )
          .map((v) => v.variableCollectionId)
          .map((v) => collectionsById[v]!)
          .toList();

      return collection.copyWith(
        variables: theseVariables,
        dependsOnCollections: dependencies,
      );
    }).toList();
  }
}
