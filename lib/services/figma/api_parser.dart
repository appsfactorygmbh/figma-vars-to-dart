import 'figma_entities.dart';

FigmaResponse parseJsonFromApi(
  apiResponse, {
  required Map<String, String> collectionOverrides,
  required Map<String, String> variableOverrides,
}) {
  final json = apiResponse['meta'];
  final collectionsJson = json['variableCollections'] as Map<String, dynamic>;
  final variablesJson = json['variables'] as Map<String, dynamic>;

  final allCollections = collectionsJson.values.map((value) {
    final collection = FigmaCollection.fromJson(value as Map<String, dynamic>);
    final name = collection.name;
    return collection.copyWith(
      name: collectionOverrides[name] ?? name,
    );
  }).toList();
  final allVariables = variablesJson.values.map(
    (value) {
      final variable = FigmaVariable.fromJson(value as Map<String, dynamic>);
      final name = variable.name;
      return variable.copyWith(name: variableOverrides[name] ?? name);
    },
  ).toList();

  return FigmaResponse(
    variables: allVariables,
    collections: allCollections,
  );
}
