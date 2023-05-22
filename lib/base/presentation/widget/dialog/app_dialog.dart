import 'package:flutter/material.dart';
import 'package:project_home/base/presentation/widget/dialog/contents/alert_dialog_content.dart';
import 'package:project_home/base/presentation/widget/dialog/contents/one_button_dialog_content.dart';
import 'package:project_home/main/domain/routes/route_navigation.dart';

class AppDialog {
  static Future showAlertDialog({
    required Widget child,
    required String titleRight,
    required VoidCallback onClickRight,
  }) =>
      showDialog(
        context: currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: AlertDialogContent(
              titleRight: titleRight,
              onClickRight: onClickRight,
              child: child,
            ),
          );
        },
      );

  static Future showOneButtonDialog({
    required Widget child,
    required String title,
    required VoidCallback onClick,
    bool isDefault = true,
    Color? colorButton,
    bool barrierDismissible = false,
  }) =>
      showDialog(
        context: currentContext!,
        barrierDismissible: barrierDismissible,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: OneButtonDialogContent(
              title: title,
              onClick: onClick,
              colorButton: colorButton,
              isDefault: isDefault,
              child: child,
            ),
          );
        },
      );
}
