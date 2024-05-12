import 'package:dio/dio.dart';
import 'package:nawy_app/core/utlis/api_services/api_service.dart';

import '../enums/subscription_status.dart';

class SubscriptionsApiService extends ApiService {
  SubscriptionsApiService(super.dio);

  Future<List<Map<String, dynamic>>> getSubscriptions({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/subscriptions",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> subscriptionsData = [];

    return subscriptionsData;
  }

  Future<Map<String, dynamic>> postSubscriptions({
    required int userId,
    required String planName,
    required num price,
    required DateTime startDate,
    required DateTime endDate,
    required SubscriptionSatatus subscriptionSatatus,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/subscriptions",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> subscriptionsData = {};

    return subscriptionsData;
  }

  Future<Map<String, dynamic>> putSubscriptions({
    required int subscriptionId,
    required int userId,
    required String planName,
    required num price,
    required DateTime startDate,
    required DateTime endDate,
    required SubscriptionSatatus subscriptionSatatus,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/subscriptions/$subscriptionId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> subscriptionsData = {};

    return subscriptionsData;
  }

  Future<Map<String, dynamic>> deleteSubscriptions({
    required int subscriptionId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/subscriptions/$subscriptionId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> subscriptionsData = {};

    return subscriptionsData;
  }
}
