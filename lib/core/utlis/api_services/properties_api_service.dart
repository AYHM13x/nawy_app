// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:dio/dio.dart';

import '../enums/payment_option.dart';
import '../enums/property_orientation.dart';
import 'api_service.dart';

class PropertiesApiService extends ApiService {
  PropertiesApiService(super.dio);

  Future<List<Map<String, dynamic>>> getProperties({
    required int ownerId,
    required int locationId,
    required int typeId,
    required int statusId,
    required num price,
    required bool isPriceNegotiable,
    required int numRooms,
    required int numBathrooms,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/properties",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> propertiesData = [];

    return propertiesData;
  }

  Future<Map<String, dynamic>> postProperties({
    required int ownerId,
    required int locationId,
    required int typeId,
    required int statusId,
    required num price,
    required bool isPriceNegotiable,
    required int age,
    required PropertyOrientation orientation,
    required int numOfStreetAround,
    required int numOfRooms,
    required int numOfBathrooms,
    required int numOfDiningRooms,
    required int numOfWindows,
    required List<File> squareFootage,
    required DateTime availabilityDate,
    required bool hasKitchen,
    required bool hasAC,
    required bool hasHelperRoom,
    required bool isFurnished,
    required bool hasPool,
    required bool hasDrivingRoom,
    required bool hasBasement,
    required bool hasGarage,
    required bool hasElevator,
    required bool hasGarden,
    required bool hasTerrace,
    required bool hasFireplace,
    required bool hasAlarmSystem,
    required bool hasGym,
    required bool hasSwimmingPool,
    required PaymentOption paymentOption,
    required bool allowBuyOrSell,
    required String description,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/properties",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> propertiesData = {};

    return propertiesData;
  }

  Future<Map<String, dynamic>> getPropertyDetails({
    required int propertyId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/properties/$propertyId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> propertyDetails = {};

    return propertyDetails;
  }

  Future<Map<String, dynamic>> putPropertyDetails({
    required int propertyId,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/properties/$propertyId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> propertyDetails = {};

    return propertyDetails;
  }

  Future<Map<String, dynamic>> deleteProperty({
    required int propertyId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/properties/$propertyId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> propertyDetails = {};

    return propertyDetails;
  }
}
