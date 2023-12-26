import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_home/utils/config/app_color.dart';
import 'package:project_home/base/presentation/widget/app_bar/invisible_app_bar.dart';
import 'package:project_home/utils/config/asset_paths/image_paths.dart';

class ScreenLayout extends StatelessWidget {
  final Widget body;
  final Color iconThemeColor;
  final Color? backgroundColor;
  final bool showAppBar;
  final Widget? title;
  final List<Widget>? actions;
  final bool shouldHideKeyBoardOnTap;
  final SystemUiOverlayStyle appBarSystemOverlayStyle;
  final Color? appBarBackgroundColor;
  final Widget? background;
  final Widget? leading;
  final double? titleSpacing;
  final bool safeTop;
  final bool safeBottom;
  final ShapeBorder? appBarShapeBorder;
  final bool centerTitle;
  final bool showLeading;
  final bool isOverride;
  final VoidCallback? onTapCheckConnection;
  final VoidCallback? onTapReload;
  final AppBar? appBar;

  const ScreenLayout({
    Key? key,
    required this.body,
    this.showAppBar = true,
    this.title,
    this.actions,
    this.shouldHideKeyBoardOnTap = true,
    this.appBarBackgroundColor,
    this.background,
    this.titleSpacing,
    this.safeTop = true,
    this.safeBottom = true,
    this.appBarShapeBorder,
    this.backgroundColor,
    this.leading,
    this.centerTitle = false,
    this.showLeading = true,
    this.isOverride = true,
    this.appBarSystemOverlayStyle = SystemUiOverlayStyle.light,
    this.onTapCheckConnection,
    this.onTapReload,
    this.appBar,
  })  : iconThemeColor = AppColor.colorBlack,
        super(key: key);

  const ScreenLayout.white({
    Key? key,
    required this.body,
    this.showAppBar = true,
    this.title,
    this.actions,
    this.shouldHideKeyBoardOnTap = true,
    this.background,
    this.titleSpacing,
    this.safeTop = true,
    this.safeBottom = true,
    this.appBarShapeBorder,
    this.backgroundColor,
    this.leading,
    this.centerTitle = false,
    this.showLeading = true,
    this.isOverride = true,
    this.appBarSystemOverlayStyle = SystemUiOverlayStyle.dark,
    this.onTapCheckConnection,
    this.onTapReload,
    this.appBar,
  })  : iconThemeColor = AppColor.colorBlack,
        appBarBackgroundColor = AppColor.color50565C,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: shouldHideKeyBoardOnTap
          ? () {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          : null,
      child: Stack(
        children: [
          if (background != null)
            Positioned.fill(
              child: background!,
            ),
          Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: (isOverride) ? true : false,
            backgroundColor: backgroundColor,
            appBar: showAppBar
                ? appBar ??
                    AppBar(
                      systemOverlayStyle: appBarSystemOverlayStyle.copyWith(
                        statusBarColor: AppColor.colorFA5061.withOpacity(0),
                      ),
                      backgroundColor:
                          appBarBackgroundColor ?? AppColor.colorE5E5E5,
                      elevation: 0,
                      centerTitle: centerTitle,
                      title: title,
                      titleSpacing: titleSpacing,
                      iconTheme: IconThemeData(
                        color: iconThemeColor,
                      ),
                      actions: actions,
                      leading: showLeading
                          ? leading ??
                              IconButton(
                                onPressed: Get.back,
                                icon: SvgPicture.asset(
                                  ImagePaths.bacIcon,
                                  width: 20,
                                  height: 20,
                                ),
                              )
                          : null,
                      shape: appBarShapeBorder,
                      automaticallyImplyLeading: showLeading,
                    )
                : InvisibleAppBar(
                    appBarSystemOverlayStyle: appBarSystemOverlayStyle.copyWith(
                      statusBarColor: AppColor.colorFA5061.withOpacity(0),
                    ),
                    backgroundColor:
                        appBarBackgroundColor ?? AppColor.color50565C,
                  ),
            body: body,
          ),
        ],
      ),
    );
  }
}
