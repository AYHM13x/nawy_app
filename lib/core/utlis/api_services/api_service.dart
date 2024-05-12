import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final baseUrl = "";

  ApiService(this.dio);

  Future<Map<String, dynamic>> getGeneral({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> generalData = {};

    return generalData;
  }
}
