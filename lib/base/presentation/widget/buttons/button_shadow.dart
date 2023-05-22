import 'package:flutter/material.dart';
import 'package:project_home/base/presentation/resources/app_color.dart';

class ButtonShadow extends StatelessWidget {
  const ButtonShadow({
    Key? key,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.backgroundColor = AppColor.color50565C,
    this.borderColor = AppColor.colorE5E5E5,
    required this.content,
    this.boxShadow,
    this.borderRadius,
  }) : super(key: key);

  final Widget content;
  final double? height;
  final double? width;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow>? boxShadow;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 4),
        boxShadow: boxShadow ??
            const [
              BoxShadow(
                color: AppColor.colorFFFAFA,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
      ),
      child: content,
    );
  }
}
