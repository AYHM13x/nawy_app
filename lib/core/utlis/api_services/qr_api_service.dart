import 'dart:io';

import 'package:dio/dio.dart';

import '../enums/qr_content_type.dart';
import 'api_service.dart';

class QrApiService extends ApiService {
  QrApiService(super.dio);

  Future<List<Map<String, dynamic>>> getProperties({
    required int qrId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/qr/$qrId",
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

  Future<Map<String, dynamic>> postProperties({
    required QrContentType qrContentType,
    required int contentId,
    required File qrCodeData,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/qr",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> qrData = {};

    return qrData;
  }
}
