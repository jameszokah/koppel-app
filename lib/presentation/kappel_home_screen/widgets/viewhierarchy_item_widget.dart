import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(5.h),
            decoration: AppDecoration.fillTeal.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: IconButtonStyleHelper.fillTeal,
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: viewhierarchyItemModelObj?.navigationIcon,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  viewhierarchyItemModelObj.homeText!,
                  style: CustomTextStyles.titleSmallBlack900Medium,
                ),
                Text(
                  viewhierarchyItemModelObj.locationText!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgNavigationMapPin,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}
