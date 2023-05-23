import 'package:project_home/base/presentation/resources/asset_paths/assets_paths.dart';

class ImagePaths {
  static String get addIcon => _getImagePath('add_icon.png');
  static String get bacIcon => _getImagePath('ic_back.svg');

  static String _getImagePath(String imageName) {
    return AssetsPaths.images + imageName;
  }
}