import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_home/feature/home/home_controller.dart';

class HomeView extends GetWidget<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
