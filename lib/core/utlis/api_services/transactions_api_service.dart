import 'package:dio/dio.dart';

import '../enums/transaction_type.dart';
import 'api_service.dart';

class TransactionsApiService extends ApiService {
  TransactionsApiService(super.dio);

  Future<List<Map<String, dynamic>>> getTransactions({
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/transactions",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> transactionsData = [];

    return transactionsData;
  }

  Future<Map<String, dynamic>> postTransactions({
    required int userId,
    required TransactionType transactionType,
    required num amount,
    required String currencyCode,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/transactions",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> transactionsData = {};

    return transactionsData;
  }
}
