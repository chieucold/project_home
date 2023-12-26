import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_home/base/data/model/error_response.dart';
import 'package:project_home/base/presentation/connectivity/connectivity_controller.dart';
import 'package:project_home/base/presentation/mixin/app_loader_mixin.dart';
import 'package:project_home/base/presentation/widget/dialog/app_dialog.dart';
import 'package:project_home/utils/config/app_color.dart';
import 'package:project_home/utils/extension/view_utils.dart';
import 'package:project_home/utils/config/app_edge_insets.dart';
import 'package:project_home/utils/config/app_text_style.dart';
import 'package:project_home/utils/config/asset_paths/image_paths.dart';
import 'package:project_home/utils/config/routes/route_navigation.dart';

class BaseController extends GetxController with AppLoaderMixin {
  final errorMessagePresent = RxnString();
  final isError = false.obs;
  final isShowLoading = true.obs;
  Function(String)? onError;

  void consumeState<T>(
    Future<T> function, {
    Function(T)? onSuccess,
    Function(String)? onError,
  }) {
    this.onError = onError;
    Get.showOverlay<T>(
      asyncFunction: () => function,
      loadingWidget:
          isShowLoading.value ? loadingWidget : const SizedBox.shrink(),
      opacityColor: AppColor.transparent,
    ).then((value) {
      errorMessagePresent.value = null;
      isError.value = false;
      onSuccess?.call(value);
    }).onError((error, stackTrace) {
      isError.value = true;
      remoteErrorHandle(error);
    });
  }

  void remoteErrorHandle(Object? error) {
    final handleLossConnection = _handleLossConnectionError(error);
    if (handleLossConnection) {
      return;
    }
    if (error is DioError) {
      errorMessagePresent.value = _handleApiError(error);
    }
    return;
  }

  bool _handleLossConnectionError(Object? error) {
    if (Get.isRegistered<ConnectivityController>() &&
        Get.find<ConnectivityController>().connectionStatus ==
            ConnectivityResult.none) {
      Get.find<ConnectivityController>().showLostConnectionDialog();
      return true;
    }
    return false;
  }

  String? _handleApiError(DioError error) {
    if (error.response?.data != null) {
      final errorResponse = ErrorResponse.fromJson(error.response?.data);

      if (error.type == DioErrorType.connectTimeout ||
          error.type == DioErrorType.receiveTimeout) {
        Get.find<ConnectivityController>().showLostConnectionDialog();
      } else if (error.type == DioErrorType.response) {
        final errorResponse = ErrorResponse.fromJson(error.response?.data);
        ViewUtils.showToastError(
          message: errorResponse.message,
        );
      }
      if (onError != null) {
        onError!(errorResponse.message);
      } else {
        ViewUtils.showToastError(
          message: errorResponse.message,
          marginBottomMobile: AppEdgeInsets.zero,
        );
      }
      return errorResponse.message;
    }
    return null;
  }

  void showLostConnectionDialog() {
    AppDialog.showAlertDialog(
      child: Column(
        children: [
          Image.asset(
            ImagePaths.addIcon,
            width: 89,
            height: 99,
          ),
          const SizedBox(height: 11),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'abc',
              style: AppTextStyle.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColor.colorBlack,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'abc',
            style: AppTextStyle.textStyle14.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColor.colorBlack,
            ),
          ),
        ],
      ),
      titleRight: 'abc',
      onClickRight: popBack,
    );
  }
}
