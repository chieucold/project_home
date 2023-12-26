import 'package:flutter/material.dart';
import 'package:project_home/presentation/app.dart';
import 'package:project_home/utils/config/app_configure.dart';
import 'package:project_home/utils/config/app_flavor.dart';

void main() async {
  await AppConfigureFlavor.configure(Flavor.dev);
  runApp(const App());
}

///
///
/// thêm utlis(notification,service)
/// dùng text uarua GetX
///
