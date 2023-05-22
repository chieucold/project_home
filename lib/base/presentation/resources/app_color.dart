import 'dart:math';

import 'package:flutter/material.dart';

extension AppColor on Color {
  static const MaterialColor secondaryBlue = MaterialColor(
    0xFF276EF1,
    <int, Color>{
      50: Color(0xFFEEF3FE),
      100: Color(0xFFD4E2FC),
      200: Color(0xFFA0BFF9),
      300: Color(0xFF5B91F4),
      400: Color(0xFF276EF1),
      500: Color(0xFF1E54B7),
      600: Color(0xFF174291),
      700: Color(0xFF102C60),
    },
  );
  static const MaterialColor secondaryRed = MaterialColor(
    0xFFD44333,
    <int, Color>{
      50: Color(0xFFFDF0EF),
      100: Color(0xFFFADBD7),
      200: Color(0xFFF4AFA7),
      300: Color(0xFFEB7567),
      400: Color(0xFFD44333),
      500: Color(0xFFAE372A),
      600: Color(0xFF892C21),
      700: Color(0xFF5C1D16),
    },
  );
  static const MaterialColor secondaryOrange = MaterialColor(
    0xFFED6E33,
    <int, Color>{
      50: Color(0xFFFEF3EF),
      100: Color(0xFFFBE2D6),
      200: Color(0xFFF7BFA5),
      300: Color(0xFFF19164),
      400: Color(0xFFED6E33),
      500: Color(0xFFB45427),
      600: Color(0xFF8E421F),
      700: Color(0xFF5F2C14),
    },
  );
  static const MaterialColor secondaryYellow = MaterialColor(
    0xFFFFC043,
    <int, Color>{
      50: Color(0xFFFFFAF0),
      100: Color(0xFFFFF2D9),
      200: Color(0xFFFFE3AC),
      300: Color(0xFFFFCF70),
      400: Color(0xFFFFC043),
      500: Color(0xFFBC8B2C),
      600: Color(0xFF997328),
      700: Color(0xFF664D1B),
    },
  );

  static const MaterialColor secondaryGreen = MaterialColor(
    0xFF3AA76D,
    <int, Color>{
      50: Color(0xFFF0F9F4),
      100: Color(0xFFDAF0E3),
      200: Color(0xFFAEDDC2),
      300: Color(0xFF73C496),
      400: Color(0xFF3AA76D),
      500: Color(0xFF368759),
      600: Color(0xFF2B6B46),
      700: Color(0xFF1C472F),
    },
  );

  static const MaterialColor secondaryPurple = MaterialColor(
    0xFF7356BF,
    <int, Color>{
      50: Color(0xFFF4F1FA),
      100: Color(0xFFE3DDF2),
      200: Color(0xFFC1B5E3),
      300: Color(0xFF957FCE),
      400: Color(0xFF7356BF),
      500: Color(0xFF574191),
      600: Color(0xFF453473),
      700: Color(0xFF2E224C),
    },
  );

  static const MaterialColor secondaryBrown = MaterialColor(
    0xFF3AA76D,
    <int, Color>{
      50: Color(0xFFF7F3F1),
      100: Color(0xFFEBE0DB),
      200: Color(0xFFD2BBB0),
      300: Color(0xFFB18977),
      400: Color(0xFF99644C),
      500: Color(0xFF744C3A),
      600: Color(0xFF5C3C2E),
      700: Color(0xFF3D281E),
    },
  );
  static const transparent = Colors.transparent;
  static const color9D9D9D = Color(0xFF9D9D9D);
  static const color12181D = Color(0xFF12181D);
  static const color141414 = Color(0xFF141414);
  static const colorAFAFAF = Color(0xFFAFAFAF);
  static const colorDD1327 = Color(0xFFDD1327);
  static const colorFFCBD1 = Color(0xFFFFCBD1);
  static const colorFDF0EF = Color(0xFFFDF0EF);
  static const color4BD14B = Color(0xFF4BD14B);
  static const colorE2E2E2 = Color(0xFFE2E2E2);
  static const colorBBBBBB = Color(0xFFBBBBBB);
  static const colorEF232D = Color(0xFFEF232D);
  static const colorF6F6F6 = Color(0xFFF6F6F6);
  static const colorFE302D = Color(0xFFFE302D);
  static const colorEEEEEE = Color(0xFFEEEEEE);
  static const color1366EA = Color(0xFF1366EA);
  static const colorBDBDBD = Color(0xFFBDBDBD);
  static const color757575 = Color(0xFF757575);
  static const colorE5E5E5 = Color(0xFFE5E5E5);
  static const colorED6E33 = Color(0xFFED6E33);
  static const color8A9298 = Color(0xFF8A9298);
  static const colorDC3131 = Color(0xFFDC3131);
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorBlack = Color(0xFF000000);
  static const colorF1F1F1 = Color(0xFFF1F1F1);
  static const colorF1F9FF = Color(0xFFF1F9FF);
  static const color5B91F4 = Color(0xFF5B91F4);
  static const colorE9F4FF = Color(0xFFE9F4FF);
  static const color277EFF = Color(0xFF277EFF);
  static const colorFA5061 = Color(0xFFFA5061);
  static const colorF7F7F7 = Color(0xFFF7F7F7);
  static const color565656 = Color(0xFF565656);
  static const colorBf1e2d = Color(0xFFBf1e2d);
  static const color161616 = Color(0xFF161616);
  static const color545454 = Color(0xFF545454);
  static const colorE4FFE7 = Color(0xFFE4FFE7);
  static const color51B747 = Color(0xFF51B747);
  static const color1265E9 = Color(0xFF1265E9);
  static const color32383E = Color(0xFF32383E);
  static const colorDEDEDE = Color(0xFFDEDEDE);
  static const color0E1214 = Color(0xFF0E1214);
  static const colorDEE0E1 = Color(0xFFDEE0E1);
  static const colorE1F4FF = Color(0xFFE1F4FF);
  static const color84E3FF = Color(0xFF84E3FF);
  static const colorB5B5B5 = Color(0xFFB5B5B5);
  static const color131313 = Color(0xFF131313);
  static const colorAAB2B9 = Color(0xFFAAB2B9);
  static const color3AA76D = Color(0xFF3AA76D);
  static const colorDAF0E3 = Color(0xFFDAF0E3);
  static const colorEDF6FF = Color(0xFFEDF6FF);
  static const color276EF1 = Color(0xFF276EF1);
  static const colorE8E8E8 = Color(0xFFE8E8E8);
  static const colorFADBD7 = Color(0xFFFADBD7);
  static const color3F4956 = Color(0xff3f4956);
  static const colorD9D9D9 = Color(0xffD9D9D9);
  static const colorEEF3FE = Color(0xffEEF3FE);
  static const color73A3DB = Color(0xff73A3DB);
  static const colorD1E4F9 = Color(0xffD1E4F9);
  static const color50565C = Color(0xff50565C);
  static const color31C23F = Color(0xff31C23F);
  static const colorEBEBEB = Color(0xffEBEBEB);
  static const color7E7E7E = Color(0xff7E7E7E);
  static const colorFFF6E9 = Color(0xffFFF6E9);
  static const colorF3F4F6 = Color(0xffF3F4F6);
  static const colorF1FFF5 = Color(0xffF1FFF5);
  static const colorF5F5F5 = Color(0xffF5F5F5);
  static const color73777A = Color(0xff73777A);
  static const colorE5EFF2 = Color(0xffE5EFF2);
  static const color2DA3C7 = Color(0xff2DA3C7);
  static const colorFE7080 = Color(0xffFE7080);
  static const color0B8DB5 = Color(0xff0B8DB5);
  static const color80AEDDC2 = Color(0x80AEDDC2);
  static const color80FFBBBB = Color(0x80FFBBBB);
  static const color00CC5F = Color(0xFF00CC5F);
  static const colorEA3A3A = Color(0xFFEA3A3A);
  static const colorF8E5E5 = Color(0xffF8E5E5);
  static const colorCED6DD = Color(0xffCED6DD);
  static const colorFFB115 = Color(0xffFFB115);
  static const color0D99FF = Color(0xff0D99FF);
  static const colorFFBAB0 = Color(0xffFFBAB0);
  static const colorFFFAFA = Color(0xffFFFAFA);
  static const colorBE5857 = Color(0xffBE5857);

  static const splashGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFBF000C),
      Color(0xFF10375E),
    ],
  );

  static const registerButtonGradient = LinearGradient(
    colors: [
      Color(0xFF151515),
      Color(0xFFDD1829),
      Color(0xFFDD1327),
    ],
    stops: [
      0.3954,
      0.3955,
      1,
    ],
    transform: GradientRotation(pi * 4.4),
  );
}
