import 'notifier/koppel_meet_driver_notifier.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:koppel/widgets/app_bar/appbar_title.dart';
import 'package:koppel/widgets/app_bar/custom_app_bar.dart';
import 'package:koppel/widgets/custom_elevated_button.dart';
import 'package:koppel/widgets/custom_floating_text_field.dart';

class KoppelMeetDriverScreen extends ConsumerStatefulWidget {
  const KoppelMeetDriverScreen({Key? key}) : super(key: key);

  @override
  KoppelMeetDriverScreenState createState() => KoppelMeetDriverScreenState();
}

class KoppelMeetDriverScreenState
    extends ConsumerState<KoppelMeetDriverScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 42.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame10,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(50.h)),
                  SizedBox(height: 16.v),
                  Text("lbl_sam_altman".tr,
                      style: CustomTextStyles.headlineSmallBlack900_1),
                  SizedBox(height: 4.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                        width: 48.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgInterfaceStarOrange400,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("lbl_4_3".tr,
                                      style: CustomTextStyles
                                          .titleSmallBlack90014_1))
                            ])),
                    Padding(
                        padding: EdgeInsets.only(left: 21.h, top: 3.v),
                        child: Text("lbl_235_ratings".tr,
                            style: CustomTextStyles.labelLargeBlack900_2))
                  ]),
                  SizedBox(height: 78.v),
                  _buildDriverInfo(context),
                  SizedBox(height: 56.v),
                  _buildAvailability(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 81.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowRightBlack900,
            margin: EdgeInsets.only(left: 41.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_meet_your_driver".tr));
  }

  /// Section Widget
  Widget _buildDriverInfo(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 29.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 53.h),
                            child: Text("lbl_21".tr,
                                style: theme.textTheme.headlineSmall)),
                        SizedBox(height: 6.v),
                        Text("msg_total_ride_completed".tr,
                            style: CustomTextStyles.titleSmallBlack90014)
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_13_43_km".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 6.v),
                        Text("lbl_distance_shared".tr,
                            style: CustomTextStyles.titleSmallBlack90014)
                      ])
                ])));
  }

  /// Section Widget
  Widget _buildAvailability(BuildContext context) {
    return SizedBox(
        height: 287.v,
        width: 348.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomElevatedButton(
              width: 347.h,
              text: "lbl_availability".tr,
              buttonStyle: CustomButtonStyles.outlinePrimaryBL25,
              buttonTextStyle: CustomTextStyles.titleMediumBlack90017,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 37.h, vertical: 41.v),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL25),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2.v, right: 12.h, bottom: 1.v),
                                      child: _buildFrame(context,
                                          textThrs: "lbl_wed".tr,
                                          textFifteen: "lbl_14".tr)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 12.h, top: 2.v, right: 12.h),
                                      child: _buildFrame(context,
                                          textThrs: "lbl_thrs".tr,
                                          textFifteen: "lbl_15".tr)),
                                  Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              12.h, 2.v, 12.h, 1.v),
                                          child: Consumer(
                                              builder: (context, ref, _) {
                                            return CustomFloatingTextField(
                                                controller: ref
                                                    .watch(
                                                        koppelMeetDriverNotifier)
                                                    .sixteenController,
                                                labelText: "lbl_fri".tr,
                                                labelStyle:
                                                    theme.textTheme.titleSmall!,
                                                hintText: "lbl_fri".tr);
                                          }))),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          12.h, 2.v, 12.h, 1.v),
                                      child: _buildFrame(context,
                                          textThrs: "lbl_sat".tr,
                                          textFifteen: "lbl_17".tr)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 12.h, bottom: 1.v),
                                      child: _buildFrame(context,
                                          textThrs: "lbl_sun".tr,
                                          textFifteen: "lbl_18".tr))
                                ])),
                        SizedBox(height: 35.v),
                        Row(children: [
                          _buildFrame(context,
                              textThrs: "lbl_mon".tr, textFifteen: "lbl_19".tr),
                          Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Consumer(builder: (context, ref, _) {
                                return CustomFloatingTextField(
                                    width: 35.h,
                                    controller: ref
                                        .watch(koppelMeetDriverNotifier)
                                        .twentyController,
                                    labelText: "lbl_tue".tr,
                                    labelStyle: theme.textTheme.titleSmall!,
                                    hintText: "lbl_tue".tr,
                                    textInputAction: TextInputAction.done);
                              }))
                        ]),
                        SizedBox(height: 30.v)
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String textThrs,
    required String textFifteen,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.h),
                decoration: AppDecoration.outlineBlack9003
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 5.v),
                      Text(textThrs,
                          style: CustomTextStyles.labelMediumOnPrimaryContainer
                              .copyWith(
                                  color: theme.colorScheme.onPrimaryContainer)),
                      SizedBox(height: 3.v),
                      Padding(
                          padding: EdgeInsets.only(right: 3.h),
                          child: Text(textFifteen,
                              style: CustomTextStyles.titleSmallWhiteA700
                                  .copyWith(
                                      color:
                                          appTheme.whiteA700.withOpacity(0.8))))
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
