// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';

import 'api_service.dart';
import '../enums/body_type.dart';
import '../enums/fuel_type.dart';
import '../enums/payment_option.dart';
import '../enums/registration_status.dart';
import '../enums/service_history.dart';
import '../enums/transmission.dart';
import '../enums/vehicle_condition.dart';
import '../enums/warranty_status.dart';

class VehiclesApiService extends ApiService {
  VehiclesApiService(super.dio);

  Future<List<Map<String, dynamic>>> getVehicles({
    required int ownerId,
    required int vehicleCategoryId,
    required int vehicleMakeId,
    required int vehicleModelId,
    required int year,
    required num price,
    required String color,
    required FuelType fuelType,
    required Transmission transmission,
    required BodyType bodyType,
    required VehicleCondition vehicleCondition,
    required bool isPriceNegotiable,
    required RegistrationStatus registrationStatus,
    required WarrantyStatus warrantyStatus,
    required PaymentOption paymentOption,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/vehicles",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    List<Map<String, dynamic>> vehiclesData = [];

    return vehiclesData;
  }

  Future<Map<String, dynamic>> postVehicle({
    required int ownerId,
    required int vehicleCategoryId,
    required int vehicleMakeId,
    required int vehicleModelId,
    required int year,
    required num price,
    required num mileage,
    required String color,
    required FuelType fuelType,
    required Transmission transmission,
    required BodyType bodyType,
    required num engineSize,
    required num horsePawer,
    required VehicleCondition vehicleCondition,
    required bool isPriceNegotiable,
    required RegistrationStatus registrationStatus,
    required int numOfOwners,
    required String vehicleFeatures,
    required num safetyStatus,
    required WarrantyStatus warrantyStatus,
    required ServiceHistory serviceHistory,
    required PaymentOption paymentOption,
    required bool hasBeenInAccidents,
    required bool hasLoanOrLien,
    required String token,
  }) async {
    var response = await dio.post(
      "$baseUrl/vehicles",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> vehicleData = {};

    return vehicleData;
  }

  Future<Map<String, dynamic>> getVehicleDetails({
    required int propertyId,
    required String token,
  }) async {
    var response = await dio.get(
      "$baseUrl/vehicles/$propertyId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> vehicleDetails = {};

    return vehicleDetails;
  }

  Future<Map<String, dynamic>> putVehicleDetails({
    required int propertyId,
    required String token,
  }) async {
    var response = await dio.put(
      "$baseUrl/vehicles/$propertyId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> vehicleDetails = {};

    return vehicleDetails;
  }

  Future<Map<String, dynamic>> deleteVehicleDetails({
    required int propertyId,
    required String token,
  }) async {
    var response = await dio.delete(
      "$baseUrl/vehicles/$propertyId",
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    //AuthResponse authResponse = AuthResponse.fromJson(response.toString());
    Map<String, dynamic> vehicleDetails = {};

    return vehicleDetails;
  }
}
