import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.navigationIcon,
    this.homeText,
    this.locationText,
    this.id,
  }) {
    navigationIcon = navigationIcon ?? ImageConstant.imgNavigationHouse01;
    homeText = homeText ?? "Home";
    locationText = locationText ?? "Current location";
    id = id ?? "";
  }

  String? navigationIcon;

  String? homeText;

  String? locationText;

  String? id;
}
