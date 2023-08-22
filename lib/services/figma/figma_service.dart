import 'package:dio/dio.dart';

import 'api_parser.dart';
import 'figma_entities.dart';

class FigmaService {
  Future<(FigmaResponse, Map<String, dynamic>)> getVariables({
    required String fileId,
    required String token,
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

    return (
      parseJsonFromApi(response.data),
      response.data as Map<String, dynamic>,
    );
  }
}
