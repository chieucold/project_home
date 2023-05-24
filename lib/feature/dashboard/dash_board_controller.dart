import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_home/base/presentation/base_controller.dart';

class DashBoardController extends BaseController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final selectedIndex = RxInt(0);

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  void onBottomNavigationBarItemTapped(int index) async {
    selectedIndex.value = index;
    tabController.index = index;
  }
}
