import 'package:dio/dio.dart';

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

    return dio;
  }
}
