import 'package:dio/dio.dart';
import 'package:project_home/base/data/data_source/network/dio_helper.dart';
import 'package:project_home/feature/home/data/network/home_data_source.dart';
import 'package:project_home/main/domain/config/app_flavor.dart';
import 'package:project_home/main/domain/di/injection.dart';
import 'package:project_home/main/domain/di/modules/di_module.dart';

class ApiModule extends DIModule {
  final baseUrl = FlavorConfig.instance.values.baseUrl;
  @override
  Future provider() async {
    final dio = DioHelper.configApiDio(
      dio: Dio(),
    );

    getIt.registerSingleton<HomeDataSource>(
        HomeDataSource(dio, baseUrl: baseUrl));
  }
}
