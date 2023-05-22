import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InvisibleAppBar extends AppBar {
  InvisibleAppBar({
    super.key,
    SystemUiOverlayStyle? appBarSystemOverlayStyle = SystemUiOverlayStyle.dark,
    required Color backgroundColor,
  }) : super(
          automaticallyImplyLeading: false,
          elevation: 0,
          systemOverlayStyle: appBarSystemOverlayStyle,
          toolbarHeight: 0,
          backgroundColor: backgroundColor,
        );
}
