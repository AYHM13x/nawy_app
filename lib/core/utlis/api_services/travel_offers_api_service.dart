import 'package:dio/dio.dart';

import 'api_service.dart';

class TravelOffersApiService extends ApiService {
  TravelOffersApiService(super.dio);

  Future<List<Map<String, dynamic>>> getTravelOffers({
    required int agnecyId,
    required String destination,
    required num price,
    required DateTime validityDate,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/travel/offers",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> travelOffersData = [];

    return travelOffersData;
  }

  Future<Map<String, dynamic>> postTravelOffers({
    required int agnecyId,
    required String destination,
    required num price,
    required String description,
    required DateTime validityDate,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/travel/offers",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> travelOffersData = {};

    return travelOffersData;
  }

  Future<Map<String, dynamic>> putTravelOffers({
    required int offerId,
    required int agnecyId,
    required String destination,
    required num price,
    required String description,
    required DateTime validityDate,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/travel/offers/$offerId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> travelOffersData = {};

    return travelOffersData;
  }

  Future<Map<String, dynamic>> deleteTravelOffers({
    required int offerId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/travel/offers/$offerId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> travelOffersData = {};

    return travelOffersData;
  }
}
