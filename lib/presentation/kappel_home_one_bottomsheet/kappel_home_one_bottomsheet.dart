import 'notifier/kappel_home_one_notifier.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';

// ignore_for_file: must_be_immutable
class KappelHomeOneBottomsheet extends ConsumerStatefulWidget {
  const KappelHomeOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  KappelHomeOneBottomsheetState createState() =>
      KappelHomeOneBottomsheetState();
}

class KappelHomeOneBottomsheetState
    extends ConsumerState<KappelHomeOneBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 46.h,
        vertical: 53.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recents".tr,
            style: CustomTextStyles.titleLargeBlack900,
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 59.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgInterfaceStar,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 5.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "msg_nungua_secondary".tr,
                    style: CustomTextStyles.titleMediumBlack90017,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgInterfaceStar,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_500_bank_road".tr,
                    style: CustomTextStyles.titleMediumBlack90017,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
        ],
      ),
    );
  }
}
