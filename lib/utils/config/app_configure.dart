import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_home/utils/config/app_flavor.dart';

class AppConfigureFlavor {
  static Future<void> configure(Flavor flavor) async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    await FlavorConfig.setup(flavor);
  }
}
