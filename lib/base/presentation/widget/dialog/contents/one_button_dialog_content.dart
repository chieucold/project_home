import 'package:flutter/material.dart';
import 'package:project_home/utils/config/app_color.dart';
import 'package:project_home/utils/config/app_text_style.dart';

class OneButtonDialogContent extends StatelessWidget {
  const OneButtonDialogContent({
    Key? key,
    required this.child,
    required this.title,
    required this.onClick,
    this.colorButton,
    this.isDefault = true,
  }) : super(key: key);
  final Widget child;
  final String title;
  final VoidCallback onClick;
  final Color? colorButton;
  final bool isDefault;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          if (isDefault) ...[
            const SizedBox(height: 14),
            const Divider(),
            const SizedBox(height: 14),
            GestureDetector(
              onTap: onClick,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.textStyle14.copyWith(
                    color: colorButton ?? AppColor.colorDD1327,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
