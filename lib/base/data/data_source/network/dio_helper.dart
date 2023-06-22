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
    dio.interceptors.addAll(<Interceptor>[
      AuthInterceptors(),
    ]);
    dio.options = options;
    return dio;
  }
}
