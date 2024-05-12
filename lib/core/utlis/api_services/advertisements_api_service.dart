import 'package:dio/dio.dart';

import '../enums/ad_type.dart';
import '../enums/advertisements_content_type.dart';
import 'api_service.dart';

class AdvertisementsApiService extends ApiService {
  AdvertisementsApiService(super.dio);

  Future<List<Map<String, dynamic>>> getAdvertisements({
    required int userId,
    required AdType adType,
    required AdvertisementsContentType contentType,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/ads",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> advertisementsData = [];

    return advertisementsData;
  }

  Future<Map<String, dynamic>> postAdvertisements({
    required int userId,
    required AdType adType,
    required AdvertisementsContentType contentType,
    required String contentUrl,
    required String description,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/ads",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> advertisementsData = {};

    return advertisementsData;
  }

  Future<Map<String, dynamic>> getAdvertisement({
    required int adId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/ads/$adId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> advertisementsData = {};

    return advertisementsData;
  }

  Future<Map<String, dynamic>> putAdvertisement({
    required int adId,
    required int userId,
    required AdType adType,
    required AdvertisementsContentType contentType,
    required String contentUrl,
    required String description,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/ads/$adId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> advertisementsData = {};

    return advertisementsData;
  }

  Future<Map<String, dynamic>> deleteAdvertisement({
    required int adId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/ads/$adId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> advertisementsData = {};

    return advertisementsData;
  }
}
