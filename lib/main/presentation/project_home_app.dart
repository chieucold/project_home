import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_home/feature/home/home_view.dart';

class ProjectHomeApp extends StatelessWidget {
  const ProjectHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
