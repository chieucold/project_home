import 'package:get/get.dart';
import 'package:project_home/base/presentation/base_bindings.dart';
import 'package:project_home/presentation/dashboard/dash_board_controller.dart';

class DashboardBinding extends BaseBindings {
  @override
  void bindingsController() {
    Get.lazyPut(DashBoardController.new);
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
