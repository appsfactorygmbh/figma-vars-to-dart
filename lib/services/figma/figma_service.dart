import 'dart:io';

import 'package:dio/dio.dart';

import 'figma_entities.dart';

class FigmaService {
  final dio = Dio();

  Future<(FigmaResponse, Map<String, dynamic>)> getVariables({
    required String fileId,
    required String token,
    required Map<String, String> collectionOverrides,
    required Map<String, String> variableOverrides,
    required Set<String> excludedCollections,
    required bool includeRemote,
    String? jsonOutput,
  }) async {
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

  /// Fetches Figma file data
  Future<Map<String, dynamic>> fetchFigmaFile(
      {required String fileId, required String token}) async {
    try {
      final response = await dio.get(
        'https://api.figma.com/v1/files/$fileId',
        options: Options(
          headers: {
            'X-FIGMA-TOKEN': token,
          },
        ),
      );
      return response.data;
    } catch (e) {
      print('Error fetching Figma file: $e');
      return {};
    }
  }

  /// Finds sections matching `APP_ASSET_<sectionName>` (or all if sectionsToDownload is empty)
  Map<String, List<Map<String, String>>> findAppAssets(
      Map<String, dynamic> data, List<String> sectionsToDownload) {
    Map<String, List<Map<String, String>>> imageNodes = {};

    for (var page in data['document']['children'] ?? []) {
      for (var node in page['children'] ?? []) {
        if (!node['name'].startsWith('APP_ASSET_') ||
            node['type'] != 'SECTION') {
          continue;
        }

        String folderName = node['name'].replaceFirst('APP_ASSET_', '');

        // Only include specified sections (or all if empty)
        if (sectionsToDownload.isNotEmpty &&
            !sectionsToDownload.contains(folderName)) {
          continue;
        }

        imageNodes[folderName] = [];

        for (var child in node['children'] ?? []) {
          if (child['type'] == 'COMPONENT' &&
              child.containsKey('fills') &&
              child.containsKey('name')) {
            imageNodes[folderName]!.add({
              'id': child['id'],
              'name': child['name'],
            });
          }
        }
      }
    }

    return imageNodes;
  }

  /// Fetches image URLs for a given scale
  Future<Map<String, String>> fetchImageUrls(
      {required String fileId,
      required String token,
      required List<String> nodeIds,
      required String imageFormat,
      required double scale}) async {
    String ids = nodeIds.join(',');
    var url =
        'https://api.figma.com/v1/images/$fileId?ids=$ids&format=$imageFormat&scale=$scale';
    print(url);

    dio.options.headers = {
      'X-Figma-Token': token,
    };

    try {
      var response = await dio.get(url);
      return Map<String, String>.from(response.data['images'] ?? {});
    } catch (e) {
      print('Error fetching image URLs: $e');
      return {};
    }
  }

  /// Fetches images from image URLs
  Future<void> downloadImages({
    required String parentDirectory,
    required Map<String, String> imageUrls,
    required String imageFormat,
    required String sectionName,
    required List<Map<String, String>> assets,
    required double scale,
    required bool forceDownload,
  }) async {
    final subfolderName = formatScale(scale);
    String scaleFolder = scale == 1.0
        ? '$parentDirectory/$sectionName'
        : '$parentDirectory/$sectionName/$subfolderName';

    Directory(scaleFolder).createSync(recursive: true);

    for (var asset in assets) {
      String nodeId = asset['id']!;
      String imageName = asset['name']!.replaceAll(RegExp(r'[^\w.-]'), '_');
      String imageUrl = imageUrls[nodeId] ?? '';

      if (imageUrl.isEmpty) continue;

      String filePath = '$scaleFolder/$imageName.$imageFormat';

      if (!forceDownload && await File(filePath).exists()) {
        print('⚡ Skipped (already exists): $filePath');
        continue;
      }

      try {
        var response = await dio.get(imageUrl,
            options: Options(responseType: ResponseType.bytes));
        await File(filePath).writeAsBytes(response.data);
        print('✅ Downloaded: $filePath');
      } catch (e) {
        print('❌ Error downloading image $imageName: $e');
      }
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

  String formatScale(double scale) {
    if (scale % 1 == 0) {
      return '${scale.toStringAsFixed(1)}x'; // 1.0 -> "1.0x", 2.0 -> "2.0x"
    } else if (scale * 100 % 10 == 0) {
      return '${scale.toStringAsFixed(1)}x'; // 1.5 -> "1.5x", 1.7 -> "1.7x"
    } else {
      return '${scale.toStringAsFixed(2)}x'; // 3.75 -> "3.75x"
    }
  }
}
