import 'package:dio/dio.dart';

import 'figma_entities.dart';

class FigmaService {
  Future<(FigmaResponse, Map<String, dynamic>)> getVariables({
    required String fileId,
    required String token,
    required Map<String, String> collectionOverrides,
    required Map<String, String> variableOverrides,
    required Set<String> excludedCollections,
    required bool includeRemote,
    String? jsonOutput,
  }) async {
    final dio = Dio();
    final response = await dio.get(
      'https://api.figma.com/v1/files/$fileId/variables/local',
      options: Options(
        headers: {
          'X-FIGMA-TOKEN': token,
        },
      ),
    );

    final responseData = response.data as Map<String, dynamic>;
    return (
      parseJsonFromApi(
        responseData,
        variableOverrides: variableOverrides,
        collectionOverrides: collectionOverrides,
        excludedCollections: excludedCollections,
        includeRemote: includeRemote,
      ),
      responseData,
    );
  }
}

FigmaResponse parseJsonFromApi(
  apiResponse, {
  required Map<String, String> collectionOverrides,
  required Map<String, String> variableOverrides,
  required Set<String> excludedCollections,
  required bool includeRemote,
}) {
  final json = apiResponse['meta'];
  final collectionsJson = json['variableCollections'] as Map<String, dynamic>;
  final variablesJson = json['variables'] as Map<String, dynamic>;

  bool notExcluded(FigmaCollection collection) {
    return !excludedCollections.contains(collection.name) &&
        !excludedCollections.contains(collection.id);
  }

  final allCollections = collectionsJson.values
      .map((value) {
        final collection =
            FigmaCollection.fromJson(value as Map<String, dynamic>);
        final name = collection.name;
        return collection.copyWith(
          name: collectionOverrides[name] ?? name,
        );
      })
      .where(notExcluded)
      .where((element) => includeRemote ? true : !element.remote)
      .toList();

  final allVariables = variablesJson.values
      .map(
        (value) {
          final variable =
              FigmaVariable.fromJson(value as Map<String, dynamic>);
          final name = variable.name;
          return variable.copyWith(name: variableOverrides[name] ?? name);
        },
      )
      .where((variable) =>
          !excludedCollections.contains(variable.variableCollectionId))
      .where((element) => includeRemote ? true : !element.remote)
      .toList();

  return FigmaResponse(
    variables: allVariables,
    collections: allCollections,
  );
}
