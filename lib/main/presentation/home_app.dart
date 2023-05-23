import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_home/base/data/data_source/local/localization_service.dart';
import 'package:project_home/main/domain/routes/app/app_pages.dart';
import 'package:project_home/main/domain/routes/app/app_routes.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

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
