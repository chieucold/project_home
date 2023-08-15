import 'package:flutter/material.dart';
import 'package:project_home/main/domain/config/app_configure.dart';
import 'package:project_home/main/domain/config/app_flavor.dart';
import 'package:project_home/main/presentation/home_app.dart';

void main() async {
  await AppConfigureFlavor.configure(Flavor.prod);
  runApp(const HomeApp());
}
