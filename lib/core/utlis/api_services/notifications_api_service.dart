import 'package:dio/dio.dart';

import '../enums/notification_type.dart';
import 'api_service.dart';

class NotificationsApiService extends ApiService {
  NotificationsApiService(super.dio);

  Future<List<Map<String, dynamic>>> getNotifications({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/notifications",
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

  Future<Map<String, dynamic>> putNotifications({
    required int notificationId,
    required int userId,
    required NotificationType notificationType,
    required bool readStatus,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/notifications/$notificationId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> notificationsData = {};

    return notificationsData;
  }
}
