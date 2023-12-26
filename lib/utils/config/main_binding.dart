import 'package:project_home/base/presentation/base_bindings.dart';
import 'package:project_home/base/presentation/connectivity/connectivity_binding.dart';
import 'package:project_home/utils/config/local_binding.dart';
import 'package:project_home/utils/config/network_binding.dart';

class MainBinding extends BaseBindings {
  @override
  Future<void> dependencies() async {
    await LocalBinding().dependencies();
    ConnectivityBinding().dependencies();
    NetworkBinding().dependencies();
    super.dependencies();
  }

  @override
  void bindingsController() {}

  @override
  void bindingsRepository() {}

  @override
  void bindingsUseCase() {}
}
