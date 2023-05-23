import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:project_home/base/presentation/resources/app_color.dart';
import 'package:project_home/base/presentation/resources/app_edge_insets.dart';
import 'package:project_home/main/presentation/snack_bar/custom_snackbar.dart';

class SnackBarUtil {
  static void showToast({
    required String message,
    EdgeInsets marginBottomMobile = AppEdgeInsets.bottom32,
    EdgeInsets marginHorizontal = AppEdgeInsets.horizontal8,
  }) {
    BotToast.showCustomText(
      duration: const Duration(seconds: 2),
      onlyOne: true,
      clickClose: false,
      crossPage: true,
      ignoreContentClick: false,
      backgroundColor: AppColor.transparent,
      backButtonBehavior: BackButtonBehavior.none,
      animationDuration: const Duration(milliseconds: 200),
      animationReverseDuration: const Duration(milliseconds: 200),
      toastBuilder: (_) => CustomSnackBar(
        message: message,
        marginBottom: marginBottomMobile,
        marginHorizontal: marginHorizontal,
        isError: false,
      ),
    );
  }

  static void showToastError({
    required String message,
    EdgeInsets marginBottomMobile = AppEdgeInsets.bottom48,
    EdgeInsets marginHorizontal = AppEdgeInsets.horizontal8,
  }) {
    BotToast.showCustomText(
      duration: const Duration(seconds: 2),
      onlyOne: true,
      clickClose: false,
      crossPage: true,
      ignoreContentClick: false,
      backgroundColor: AppColor.transparent,
      backButtonBehavior: BackButtonBehavior.none,
      animationDuration: const Duration(milliseconds: 200),
      animationReverseDuration: const Duration(milliseconds: 200),
      toastBuilder: (_) => CustomSnackBar(
        message: message,
        marginBottom: marginBottomMobile,
        marginHorizontal: marginHorizontal,
        backgroundColor: AppColor.colorDC3131,
      ),
    );
  }
}
