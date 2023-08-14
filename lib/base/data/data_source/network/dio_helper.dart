import 'package:dio/dio.dart';
import 'package:project_home/base/data/data_source/network/api_interceptors.dart';

class DioHelper {
  /// Config default dio
  static Dio configApiDio({
    required Dio dio,
  }) {
    final BaseOptions options = BaseOptions(
      connectTimeout: 60000,
      receiveTimeout: 60000,
    );

    dio.options = options;
    dio.interceptors.addAll(<Interceptor>[
      AuthInterceptors(),
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    ]);

    return dio;
  }
}
