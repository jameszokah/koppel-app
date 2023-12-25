import 'notifier/kappel_about_notifier.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/custom_elevated_button.dart';
import 'package:koppel/widgets/custom_icon_button.dart';

class KappelAboutScreen extends ConsumerStatefulWidget {
  const KappelAboutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KappelAboutScreenState createState() => KappelAboutScreenState();
}

class KappelAboutScreenState extends ConsumerState<KappelAboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 893.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildOneStack(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.outlineBlack9001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder50,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 19.h),
                        child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlineBlack,
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMenuCloseSm,
                          ),
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_james_zokah".tr,
                          style: CustomTextStyles.headlineSmallBlack900_1,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_edit_profile".tr,
                          style: CustomTextStyles.bodyLargeTeal700,
                        ),
                      ),
                      SizedBox(height: 70.v),
                      Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: Text(
                          "lbl_favorites".tr,
                          style: CustomTextStyles.titleMediumBlack900_2,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildSevenRow(context),
                      SizedBox(height: 15.v),
                      _buildEightRow(context),
                      SizedBox(height: 51.v),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_settings".tr,
                          style: CustomTextStyles.titleMediumBlack900_2,
                        ),
                      ),
                      SizedBox(height: 27.v),
                      _buildTwentyFourRow(context),
                      SizedBox(height: 25.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 53.h,
                        ),
                        child: _buildTwentyTwoRow(
                          context,
                          dynamicText: "lbl_payment_method".tr,
                        ),
                      ),
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 53.h,
                        ),
                        child: _buildTwentyTwoRow(
                          context,
                          dynamicText: "lbl_my_rewards".tr,
                        ),
                      ),
                      SizedBox(height: 42.v),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_social_network".tr,
                          style: CustomTextStyles.titleMediumBlack900_2,
                        ),
                      ),
                      SizedBox(height: 61.v),
                      _buildThirtyTwoRow(context),
                      SizedBox(height: 44.v),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 110.adaptSize,
                  width: 110.adaptSize,
                  margin: EdgeInsets.only(top: 85.v),
                  padding: EdgeInsets.all(5.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder55,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrame10,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    radius: BorderRadius.circular(
                      50.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOneStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 266.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgScreenshot20230605266x430,
              height: 266.v,
              width: 430.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 185.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.gray20014,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSevenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 43.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 97.h,
            margin: EdgeInsets.only(top: 1.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHome,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 5.v,
                  ),
                ),
                Text(
                  "lbl_home".tr,
                  style: CustomTextStyles.titleMediumMedium,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 43.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 104.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavigationBuilding02Black900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 6.v),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    "lbl_school".tr,
                    style: CustomTextStyles.titleMediumMedium,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 5.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFourRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 53.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_notifications".tr,
            style: theme.textTheme.bodyLarge,
          ),
          Spacer(),
          Container(
            width: 14.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 5.v,
            ),
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            decoration: AppDecoration.fillLightBlueA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder7,
            ),
            child: Text(
              "lbl_3".tr,
              style: CustomTextStyles.bodySmallWhiteA700_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 8.v,
            width: 4.h,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 5.v,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyTwoRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 36.h,
          right: 7.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomElevatedButton(
                height: 37.v,
                text: "lbl_facebook".tr,
                margin: EdgeInsets.only(right: 21.h),
                buttonStyle: CustomButtonStyles.fillLightBlueA,
                buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
              ),
            ),
            Expanded(
              child: CustomElevatedButton(
                height: 37.v,
                text: "lbl_twitter".tr,
                margin: EdgeInsets.only(left: 21.h),
                buttonStyle: CustomButtonStyles.fillLightBlueATL12,
                buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTwentyTwoRow(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dynamicText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900.withOpacity(0.7),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVector,
          height: 8.v,
          width: 4.h,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 12.v,
          ),
        ),
      ],
    );
  }
}
