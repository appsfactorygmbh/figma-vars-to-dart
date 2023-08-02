import 'package:dio/dio.dart';

class FigmaService {
  Future<Map<String, dynamic>> getVariables({
    required String fileId,
    required String token,
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

    return response.data;
  }
}
