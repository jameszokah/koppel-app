import 'notifier/kappel_search_ride_notifier.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';

// ignore_for_file: must_be_immutable
class KappelSearchRideBottomsheet extends ConsumerStatefulWidget {
  const KappelSearchRideBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  KappelSearchRideBottomsheetState createState() =>
      KappelSearchRideBottomsheetState();
}

class KappelSearchRideBottomsheetState
    extends ConsumerState<KappelSearchRideBottomsheet> {
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
            style: CustomTextStyles.titleLargeBlack900Bold,
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
                    style: CustomTextStyles.titleMediumBlack90017_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              color: appTheme.black900.withOpacity(0.2),
              indent: 19.h,
              endIndent: 2.h,
            ),
          ),
          SizedBox(height: 20.v),
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
                    style: CustomTextStyles.titleMediumBlack90017_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
