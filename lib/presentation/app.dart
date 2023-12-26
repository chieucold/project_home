import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_home/base/data/local/localization_service.dart';
import 'package:project_home/utils/config/routes/app_pages.dart';
import 'package:project_home/utils/config/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      builder: BotToastInit(),
      localeResolutionCallback:
          (Locale? deviceLocale, Iterable<Locale> supportedLocales) {
        for (final Locale locale in supportedLocales) {
          if (locale.languageCode == deviceLocale?.languageCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      localizationsDelegates: LocalizationService.localizationsDelegate,
      supportedLocales: LocalizationService.supportedLocales,
      initialRoute: AppRoutes.dashboard,
      getPages: AppPages.features,
    );
  }
}
