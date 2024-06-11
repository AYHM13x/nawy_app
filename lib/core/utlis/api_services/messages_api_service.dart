// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';

import '../enums/message_type.dart';
import 'api_service.dart';

class MessagesApiService extends ApiService {
  MessagesApiService(super.dio);

  Future<List<Map<String, dynamic>>> getMessages({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/messages",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> messagesData = [];

    return messagesData;
  }

  Future<Map<String, dynamic>> postMessages({
    required int senderId,
    required int recipientId,
    required String messageContent,
    required MessageType messageType,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/messages",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> messagesData = {};

    return messagesData;
  }

  Future<Map<String, dynamic>> getMessage({
    required int messageId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/messages/$messageId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> messagesData = {};

    return messagesData;
  }

  Future<Map<String, dynamic>> deleteMessage({
    required int messageId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/messages/$messageId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> messagesData = {};

    return messagesData;
  }
}
