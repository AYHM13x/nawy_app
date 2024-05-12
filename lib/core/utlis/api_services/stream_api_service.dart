import 'package:dio/dio.dart';
import 'package:nawy_app/core/utlis/enums/stream_status.dart';

import 'api_service.dart';

class StreamApiService extends ApiService {
  StreamApiService(super.dio);

  Future<List<Map<String, dynamic>>> getStreams({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/streaming/sessions",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> streamData = [];

    return streamData;
  }

  Future<Map<String, dynamic>> postStreams({
    required String title,
    required String description,
    required DateTime startTime,
    required DateTime endTime,
    required String steamUrl,
    required StreamStatus streamStatus,
    required int createdBy,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/streaming/sessions",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> streamData = {};

    return streamData;
  }

  Future<Map<String, dynamic>> getStream({
    required int streamId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/streaming/sessions/$streamId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> streamData = {};

    return streamData;
  }

  Future<Map<String, dynamic>> putStreams({
    required int streamId,
    required String title,
    required String description,
    required DateTime startTime,
    required DateTime endTime,
    required String steamUrl,
    required StreamStatus streamStatus,
    required int createdBy,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/streaming/sessions/$streamId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> streamData = {};

    return streamData;
  }

  Future<Map<String, dynamic>> deleteStream({
    required int streamId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/streaming/sessions/$streamId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> streamData = {};

    return streamData;
  }
}
