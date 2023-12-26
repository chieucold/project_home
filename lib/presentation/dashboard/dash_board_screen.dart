import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_home/utils/config/app_border_radius.dart';
import 'package:project_home/utils/config/app_color.dart';
import 'package:project_home/presentation/dashboard/dash_board_controller.dart';
import 'package:project_home/presentation/dashboard/widget/button_navigation_bar.dart';
import 'package:project_home/presentation/home/home_screen.dart';

class DashBoardView extends GetWidget<DashBoardController> {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.tabController,
        children: const [
          HomeScreen(),
          Center(
            child: Text('History'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: AppBorderRadius.circular10,
        ),
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add_circle,
          color: AppColor.color31C23F,
        ),
      ),
      bottomNavigationBar: const ButtonsNavigationBar(),
    );
  }
}
