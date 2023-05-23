import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:project_home/base/data/data_source/local/local_storage_manager.dart';

class LocalBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    await _bindingSharedPreferences();
  }

  Future<void> _bindingSharedPreferences() async {
    const nonAuthStorage = FlutterSecureStorage();

    Get.put<FlutterSecureStorage>(
      nonAuthStorage,
    );
    Get.put(
      LocalStorageManager(
        Get.find<FlutterSecureStorage>(),
      ),
    );
    // Get.put(AuthLocalStorageDataSource(Get.find<LocalStorageManager>()));
  }
}
