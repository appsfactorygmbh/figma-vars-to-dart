
  import 'figma_entities.dart';

FigmaResponse parseJsonFromApi(apiResponse) {
    final json = apiResponse['meta'];
    final collectionsJson = json['variableCollections'] as Map<String, dynamic>;
    final variablesJson = json['variables'] as Map<String, dynamic>;

    final allCollections = collectionsJson.values
        .map((value) => FigmaCollection.fromJson(value as Map<String, dynamic>))
        .toList();
    final allVariables = variablesJson.values.map(
      (value) {
        final variable = FigmaVariable.fromJson(value as Map<String, dynamic>);
        return variable;
      },
    ).toList();

    return FigmaResponse(
      variables: allVariables,
      collections: allCollections,
    );
  }
