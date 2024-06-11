// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';

import '../enums/user_type.dart';
import 'api_service.dart';

class AuthApiService extends ApiService {
  AuthApiService(super.dio);

  Future<Map<String, dynamic>> loginAccount({
    required String email,
    required String password,
  }) async {
    var response = await dio.post(
      "$baseUrl/auth/login?email=$email&password=$password",
      // data: [
      //   {
      //     "key": "email",
      //     "value": email,
      //     "type": "text",
      //   },
      //   {
      //     "key": "password",
      //     "value": password,
      //     "type": "text",
      //   }
      // ],
    );
    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> authResponse = {};

    return authResponse;
  }

  Future<Map<String, dynamic>> registerAccount({
    required String userName,
    required String email,
    required String password,
    required String cpassword,
    required UserType userType,
  }) async {
    var response = await dio.post(
      "$baseUrl/auth/register?name=$userName&email=$email&password=$password&c_password=$cpassword&user_type=$userType",
      // data: [
      //   {
      //     "key": "name",
      //     "value": name,
      //     "type": "text",
      //   },
      //   {
      //     "key": "email",
      //     "value": email,
      //     "type": "text",
      //   },
      //   {
      //     "key": "password",
      //     "value": password,
      //     "type": "text",
      //   },
      //   {
      //     "key": "c_password",
      //     "value": cpassword,
      //     "type": "text",
      //   },
      //   {
      //     "key": "user_type",
      //     "value": userType,
      //     "type": "text",
      //   }
      // ],
    );
    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> authResponse = {};
    return authResponse;
  }

  Future<Map<String, dynamic>> getUserData({
    required int id,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/users/me",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> userInfo = {};

    return userInfo;
  }

  Future<Map<String, dynamic>> putUserData({
    required int id,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/users/me",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> updateUserResponce = {};

    return updateUserResponce;
  }

  Future<Map<String, dynamic>> deleteUserData({
    required int id,
    required String reason,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/users/me/?deletion_reason=$reason",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> deleteUserResponce = {};

    return deleteUserResponce;
  }
}
