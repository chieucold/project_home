import 'dart:math';

import 'package:dio/dio.dart';

class AuthInterceptors extends InterceptorsWrapper {
  String? accessToken;
  String? deviceId;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('data: $err' as num);
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // if (response.data is Map &&
    //     response.data[AppUrlParam.keyData] is Map &&
    //     response.data[AppUrlParam.keyData][AppUrlParam.keyAccessToken] !=
    //         null) {
    //   accessToken =
    //       response.data[AppUrlParam.keyData][AppUrlParam.keyAccessToken];
    // }
    super.onResponse(response, handler);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    await _setHeader(options);

    /// Add access token to header before request
    // if (accessToken != null) {
    //   options.headers[AppUrlParam.keyAuthorization] =
    //       '${AppUrlParam.keyBearer} $accessToken';
    // }

    super.onRequest(options, handler);
  }

  Future<void> _setHeader(RequestOptions options) async {
    // final deviceInfo = DeviceInfoPlugin();
    // final localStorageDataSource = getx.Get.find<AuthLocalStorageDataSource>();
    // deviceId = await localStorageDataSource.getSignature();
    // options.headers[AppUrlParam.keyProxyAuthorization] =
    //     AppUrlParam.keyValueProxy;
    // if (Platform.isIOS) {
    //   final iosDeviceInfo = await deviceInfo.iosInfo;
    //   options.headers[AppUrlParam.keyDeviceId] = deviceId;
    //   options.headers[AppUrlParam.keyPlatformName] = AppUrlParam.keyPlatformIos;
    //   options.headers[AppUrlParam.keyPlatformVersion] =
    //       iosDeviceInfo.systemVersion;
    // } else if (Platform.isAndroid) {
    //   final androidDeviceInfo = await deviceInfo.androidInfo;
    //   options.headers[AppUrlParam.keyDeviceId] = deviceId;
    //   options.headers[AppUrlParam.keyPlatformName] =
    //       AppUrlParam.keyPlatformAndroid;
    //   options.headers[AppUrlParam.keyPlatformVersion] =
    //       androidDeviceInfo.version.release;
    // }
  }
}
