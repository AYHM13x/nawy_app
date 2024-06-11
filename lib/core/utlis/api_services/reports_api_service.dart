// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';

import '../enums/report_status.dart';
import '../enums/reported_content_type.dart';
import 'api_service.dart';

class ReportApiService extends ApiService {
  ReportApiService(super.dio);

  Future<List<Map<String, dynamic>>> getReports({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/reports",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> reportsData = [];

    return reportsData;
  }

  Future<Map<String, dynamic>> postReports({
    required int reporterId,
    required int reportedId,
    required ReportedContentType reportedContentType,
    required int reportedContentId,
    required String reason,
    required ReportStatus reportStatus,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/reports",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> reportsData = {};

    return reportsData;
  }

  Future<Map<String, dynamic>> getReport({
    required int reportId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/reports/$reportId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> reportsData = {};

    return reportsData;
  }

  Future<Map<String, dynamic>> putReports({
    required int reportId,
    required int reporterId,
    required int reportedId,
    required ReportedContentType reportedContentType,
    required int reportedContentId,
    required String reason,
    required ReportStatus reportStatus,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/reports/$reportId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> reportsData = {};

    return reportsData;
  }
}
