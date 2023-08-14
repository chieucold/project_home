import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_home/feature/auth/splash/splash_screen.dart';
import 'package:project_home/feature/home/presentation/home_screen.dart';

class AppRouter {
  static const home = 'home';
  static const splash = 'splash';

  static String currentRoute = splash;

  static Route onGenerateRouted(RouteSettings routeSettings) {
    //to track current route
    //this will only track pushed route on top of previous route
    currentRoute = routeSettings.name ?? "";

    log(name: 'Current Route', currentRoute);

    switch (routeSettings.name) {
      case splash:
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
      case home:
        return CupertinoPageRoute(builder: (_) => const HomeScreen());
      default:
        return CupertinoPageRoute(builder: (_) => const Scaffold());
    }
  }
}
