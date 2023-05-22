import 'package:flutter/material.dart';
import 'package:project_home/base/presentation/resources/app_color.dart';

enum AppCircularProgressType { normal, small, whiteSmall }

extension AppCircularProgressTypeExtention on AppCircularProgressType {
  double? get size {
    switch (this) {
      case AppCircularProgressType.normal:
        return null;
      case AppCircularProgressType.small:
        return 12;
      case AppCircularProgressType.whiteSmall:
        return 14;
    }
  }

  double? get strokeWidth {
    switch (this) {
      case AppCircularProgressType.normal:
        return 4;
      case AppCircularProgressType.small:
        return 2;
      case AppCircularProgressType.whiteSmall:
        return 1;
    }
  }
}

class AppCircularLoadingIndicator extends StatelessWidget {
  final AppCircularProgressType type;

  const AppCircularLoadingIndicator({
    Key? key,
    this.type = AppCircularProgressType.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AppCircularProgressType.normal:
      case AppCircularProgressType.small:
        return SizedBox(
          width: type.size,
          height: type.size,
          child: CircularProgressIndicator(
            color: AppColor.colorFA5061,
            strokeWidth: type.strokeWidth!,
          ),
        );
      case AppCircularProgressType.whiteSmall:
        return CircularProgressIndicator(
          color: AppColor.color0E1214,
          strokeWidth: type.strokeWidth!,
        );
    }
  }
}
