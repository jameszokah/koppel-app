import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.dynamicImage,
    this.dynamicText,
    this.id,
  }) {
    dynamicImage = dynamicImage ?? ImageConstant.imgInterfaceLockOpen;
    dynamicText = dynamicText ?? "1";
    id = id ?? "";
  }

  String? dynamicImage;

  String? dynamicText;

  String? id;
}
