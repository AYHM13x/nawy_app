// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';

import 'api_service.dart';

class LocationsAndCurrenciesApiService extends ApiService {
  LocationsAndCurrenciesApiService(super.dio);

  Future<List<Map<String, dynamic>>> getLocations({
    required String country,
    required String state,
    required String city,
    required String neighborhood,
    required double latitude,
    required double longitude,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/locations",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> locationsData = [];

    return locationsData;
  }

  Future<List<Map<String, dynamic>>> getCurrencies({
    required String currencyCode,
    required String currencyName,
    required num exchangeRate,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/currencies:",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> qrData = [];

    return qrData;
  }
}
