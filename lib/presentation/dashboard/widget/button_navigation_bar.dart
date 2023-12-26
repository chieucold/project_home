import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_home/utils/config/app_color.dart';
import 'package:project_home/presentation/dashboard/dash_board_controller.dart';
import 'package:project_home/utils/config/app_text_style.dart';
import 'package:project_home/utils/config/asset_paths/image_paths.dart';

class ButtonsNavigationBar extends GetWidget<DashBoardController> {
  const ButtonsNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
        ),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      notchMargin: 7,
      color: Colors.white,
      child: Obx(
        () => Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildBottomNavigationBarItem(
              path: ImagePaths.icHome,
              title: 'home'.tr,
              index: 0,
            ),
            const Spacer(),
            _buildBottomNavigationBarItem(
              path: ImagePaths.icHistory,
              title: 'history'.tr,
              index: 1,
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildBottomNavigationBarItem({
    required String path,
    String? pathSelected,
    required String title,
    required int index,
  }) {
    return Expanded(
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 6),
            SvgPicture.asset(
              path,
              fit: BoxFit.cover,
              width: 24,
              height: 24,
              color: controller.selectedIndex.value == index &&
                      pathSelected == null
                  ? AppColor.colorDD1327
                  : null,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: AppTextStyle.textStyle12.copyWith(
                fontWeight: FontWeight.w600,
                color: controller.selectedIndex.value == index
                    ? AppColor.colorDD1327
                    : AppColor.colorBDBDBD,
              ),
            ),
          ],
        ),
        onTap: () {
          controller.onBottomNavigationBarItemTapped(index);
        },
      ),
    );
  }
}
