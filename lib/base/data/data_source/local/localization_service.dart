import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:project_home/base/domain/localization/en_us.dart';
import 'package:project_home/base/domain/localization/vn_vi.dart';

class LocalizationService extends Translations {
  static const Locale defaultLocale = Locale('vi', 'VN');
  static const Locale fallbackLocale = Locale('vi', 'VN');

  static final List<String> supportedLanguageCodes = <String>[
    'vi',
    'en',
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('vi', 'VN'),
    Locale('en', 'US'),
  ];

  static final List<LocalizationsDelegate> localizationsDelegate = [
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static final Locale locale = _getLocaleFromLanguage();

  static void changeLocale(String langCode) {
    final Locale locale = _getLocaleFromLanguage(langCode: langCode);
    Get.updateLocale(locale);
  }

  static Locale _getLocaleFromLanguage({String? langCode}) {
    final String? languageCodeCurrent =
        langCode ?? Get.deviceLocale?.languageCode;
    final Locale? localeSelected = supportedLocales.firstWhereOrNull(
      (Locale locale) => locale.languageCode == languageCodeCurrent,
    );
    return localeSelected ?? Get.locale ?? defaultLocale;
  }

  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
        'vn_vi': vnVI,
        'en_US': enUS,
      };
}
