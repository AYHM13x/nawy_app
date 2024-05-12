import 'package:dio/dio.dart';

import 'api_service.dart';

class InfluencersApiService extends ApiService {
  InfluencersApiService(super.dio);

  Future<List<Map<String, dynamic>>> getInfluencers({
    required int userId,
    required int locationId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/influencers",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> influencersData = [];

    return influencersData;
  }

  Future<Map<String, dynamic>> postInfluencers({
    required int userId,
    required int locationId,
    required String biography,
    required String instagramHandle,
    required String snapchatHandle,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/influencers",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> influencersData = {};

    return influencersData;
  }

  Future<Map<String, dynamic>> getInfluencer({
    required int influencersId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/influencers/$influencersId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> influencersData = {};

    return influencersData;
  }

  Future<Map<String, dynamic>> putInfluencers({
    required int influencersId,
    required int userId,
    required int locationId,
    required String biography,
    required String instagramHandle,
    required String snapchatHandle,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/influencers/$influencersId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> influencersData = {};

    return influencersData;
  }

  Future<Map<String, dynamic>> deleteInfluencers({
    required int influencersId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/influencers/$influencersId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> influencersData = {};

    return influencersData;
  }
}
