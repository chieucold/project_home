import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class AuthInterceptors extends InterceptorsWrapper {
  String? accessToken;
  String? deviceId;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint(err.message);
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(response.statusCode.toString());
    super.onResponse(response, handler);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    super.onRequest(options, handler);
  }
}
