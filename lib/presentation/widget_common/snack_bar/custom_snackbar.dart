import 'package:flutter/material.dart';
import 'package:project_home/utils/config/app_color.dart';
import 'package:project_home/utils/config/app_edge_insets.dart';
import 'package:project_home/utils/config/app_text_style.dart';
import 'package:project_home/utils/config/asset_paths/image_paths.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;
  final EdgeInsets marginBottom;
  final EdgeInsets marginHorizontal;
  final Color backgroundColor;
  final Widget? icon;
  final bool isError;

  const CustomSnackBar({
    Key? key,
    required this.message,
    required this.marginBottom,
    required this.marginHorizontal,
    this.backgroundColor = AppColor.colorDAF0E3,
    this.icon,
    this.isError = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: double.infinity,
        margin: marginBottom + marginHorizontal,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                offset: const Offset(8, 8),
                blurRadius: 10,
                color: AppColor.color12181D.withOpacity(0.08),
              ),
              BoxShadow(
                offset: const Offset(-8, -8),
                blurRadius: 10,
                color: AppColor.color12181D.withOpacity(0.08),
              )
            ],
          ),
          child: Padding(
            padding: AppEdgeInsets.all14,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                isError
                    ? const SizedBox()
                    : Image.asset(
                        ImagePaths.addIcon,
                        color: AppColor.color3AA76D,
                      ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    message,
                    style: AppTextStyle.textStyle14.copyWith(
                      color:
                          isError ? AppColor.colorWhite : AppColor.color161616,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
