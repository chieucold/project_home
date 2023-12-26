import 'package:flutter/material.dart';
import 'package:project_home/utils/config/app_color.dart';
import 'package:project_home/utils/config/app_text_style.dart';

class AlertDialogContent extends StatelessWidget {
  const AlertDialogContent({
    Key? key,
    required this.child,
    required this.titleRight,
    required this.onClickRight,
  }) : super(key: key);
  final Widget child;
  final String titleRight;
  final VoidCallback onClickRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 14, 23, 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onClickRight,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  titleRight,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.textStyle14.copyWith(
                    color: AppColor.colorDD1327,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
