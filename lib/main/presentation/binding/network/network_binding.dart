import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:project_home/base/data/data_source/network/dio_helper.dart';
import 'package:project_home/base/data/data_source/network/interceptor/api_interceptors.dart';
import 'package:project_home/main/domain/config/app_flavor.dart';

class NetworkBinding extends Bindings {
  final baseUrl = FlavorConfig.instance.values.baseUrl;

  @override
  void dependencies() {
    _bindingInterceptor();
    _bindingDio();
    _bindingApiClient();
  }

  void _bindingInterceptor() {
    Get.put(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
    Get.put(AuthInterceptors());
  }

  void _bindingDio() {
    Get.put(Dio());
    final dio = Get.find<Dio>();
    DioHelper.configApiDio(dio: dio);
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        if (kDebugMode) {
          return true;
        }
        return false;
      };
      return client;
    };
    dio.interceptors.addAll([
      Get.find<AuthInterceptors>(),
      Get.find<LogInterceptor>(),
    ]);
  }

  void _bindingApiClient() {
    // final dio = Get.find<Dio>();
    // Get.put(
    //   AuthNetworkDataSource(
    //     dio,
    //     baseUrl: baseUrl,
    //   ),
    // );
  }
}
