import 'package:get_it/get_it.dart';
import 'package:project_home/main/domain/di/modules/api_module.dart';

GetIt getIt = GetIt.instance;

class DependencyInjection {
  static Future injection() async {
    await ApiModule().provider();
  }
}
