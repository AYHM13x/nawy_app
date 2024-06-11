// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';
import 'package:nawy_app/core/utlis/enums/action_type.dart';
import 'package:nawy_app/core/utlis/enums/entity_type.dart';

import '../enums/admin_role_type.dart';
import 'api_service.dart';

class AdminControlApiService extends ApiService {
  AdminControlApiService(super.dio);

  Future<List<Map<String, dynamic>>> getAdmins({
    required String token,
  }) async {
    // ignore: duplicate_ignore
    // ignore: unused_local_variable
    var response = await dio.get(
      "$baseUrl/admin/users",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> adminsData = [];

    return adminsData;
  }

  Future<Map<String, dynamic>> postAdmins({
    required String userName,
    required String email,
    required String passwordHash,
    required AdminRoleType adminRoleType,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/admin/users",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> adminsData = {};

    return adminsData;
  }

  Future<Map<String, dynamic>> putAdmins({
    required int adminId,
    required String userName,
    required String email,
    required String passwordHash,
    required AdminRoleType adminRoleType,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/admin/users/$adminId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    Map<String, dynamic> adminsData = {};

    return adminsData;
  }

  Future<Map<String, dynamic>> deleteAdmins({
    required int adminId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/admin/users/$adminId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> adminsData = {};

    return adminsData;
  }

  Future<List<Map<String, dynamic>>> getAdminsActions({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/admin/actions",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> adminsActionsData = [];

    return adminsActionsData;
  }

  Future<Map<String, dynamic>> postAdminsActions({
    required int adminId,
    required ActionType actionType,
    required EntityType entityType,
    required int entityId,
    required String description,
    required DateTime timeStamp,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/admin/actions",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> adminsData = {};

    return adminsData;
  }
}
