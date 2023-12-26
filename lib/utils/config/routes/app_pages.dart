import 'package:get/get.dart';
import 'package:project_home/presentation/dashboard/dash_board_binding.dart';
import 'package:project_home/presentation/dashboard/dash_board_screen.dart';
import 'package:project_home/utils/config/routes/app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> features = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashBoardView(),
      binding: DashboardBinding(),
    ),
  ];
}
