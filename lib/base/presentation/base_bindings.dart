import 'package:get/get_instance/src/bindings_interface.dart';

abstract class BaseBindings extends Bindings {
  @override
  void dependencies() {
    bindingsRepository();
    bindingsUseCase();
    bindingsController();
  }

  void bindingsRepository();

  void bindingsController();

  void bindingsUseCase();
}
