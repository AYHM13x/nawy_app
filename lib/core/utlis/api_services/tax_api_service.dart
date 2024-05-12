import 'package:dio/dio.dart';

import '../enums/tax_applicable_to.dart';
import 'api_service.dart';

class TaxApiService extends ApiService {
  TaxApiService(super.dio);

  Future<List<Map<String, dynamic>>> getTaxes({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/tax/rates",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> taxesData = [];

    return taxesData;
  }

  Future<Map<String, dynamic>> postTaxes({
    required int countryId,
    required num taxRate,
    required TaxApplicationTo taxApplicationTo,
    required String effectivefrom,
    required String effectiveTo,
    required int createdById,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/tax/rates",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> taxesData = {};

    return taxesData;
  }

  Future<Map<String, dynamic>> putTaxes({
    required int taxId,
    required int countryId,
    required num taxRate,
    required TaxApplicationTo taxApplicationTo,
    required String effectivefrom,
    required String effectiveTo,
    required int createdById,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/tax/rates/$taxId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> taxesData = {};

    return taxesData;
  }

  Future<Map<String, dynamic>> deleteTaxes({
    required int taxId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/tax/rates/$taxId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> taxesData = {};

    return taxesData;
  }
}
