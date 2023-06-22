import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AuthInterceptors extends InterceptorsWrapper {
  String? accessToken;
  String? deviceId;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    /// on Error Dio
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    /// on Response Dio
    super.onResponse(response, handler);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    /// onRequest
    super.onRequest(options, handler);
  }
}
