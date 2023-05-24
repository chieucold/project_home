import 'package:get/get.dart';
import 'package:project_home/base/presentation/base_bindings.dart';
import 'package:project_home/feature/home/home_controller.dart';

class HomeBinding extends BaseBindings {
  @override
  void bindingsController() {
    Get.lazyPut(HomeController.new);
  }

  @override
  void bindingsRepository() {
    // TODO: implement bindingsRepository
  }

  @override
  void bindingsUseCase() {
    // TODO: implement bindingsUseCase
  }
}
