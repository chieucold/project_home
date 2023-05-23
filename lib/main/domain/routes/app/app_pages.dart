import 'package:get/get.dart';
import 'package:project_home/feature/dashboard/dash_board_binding.dart';
import 'package:project_home/feature/dashboard/dash_board_view.dart';
import 'package:project_home/main/domain/routes/app/app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> features = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashBoardView(),
      binding: DashboardBinding(),
    ),
  ];
}
