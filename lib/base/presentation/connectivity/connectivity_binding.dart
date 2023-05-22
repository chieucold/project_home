import 'package:get/get.dart';
import 'package:project_home/base/presentation/base_bindings.dart';
import 'package:project_home/base/presentation/connectivity/connectivity_controller.dart';

class ConnectivityBinding extends BaseBindings {
  @override
  void bindingsController() {
    Get.put(ConnectivityController());
  }

  @override
  void bindingsRepository() {}

  @override
  void bindingsUseCase() {}
}
