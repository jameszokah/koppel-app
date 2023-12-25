import '../koppel_seats_screen/widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'notifier/koppel_seats_notifier.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:koppel/widgets/app_bar/appbar_title.dart';
import 'package:koppel/widgets/app_bar/custom_app_bar.dart';
import 'package:koppel/widgets/custom_elevated_button.dart';

class KoppelSeatsScreen extends ConsumerStatefulWidget {
  const KoppelSeatsScreen({Key? key}) : super(key: key);

  @override
  KoppelSeatsScreenState createState() => KoppelSeatsScreenState();
}

class KoppelSeatsScreenState extends ConsumerState<KoppelSeatsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10001,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 27.h),
                          child: Text("msg_toyota_bus_gn_1329_21".tr,
                              style: CustomTextStyles.headlineSmallSemiBold)),
                      SizedBox(height: 30.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 15.h),
                              child: Text("msg_mon_5_june_2023".tr,
                                  style:
                                      CustomTextStyles.titleMediumBlack900))),
                      SizedBox(height: 22.v),
                      Container(
                          height: 76.v,
                          width: 292.h,
                          margin: EdgeInsets.only(left: 27.h),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Text("msg_nungua_buade_last".tr,
                                    style: theme.textTheme.titleMedium)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(children: [
                                        Text("lbl_11_25_am".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900_1),
                                        SizedBox(height: 27.v),
                                        Text("lbl_11_55_am".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack900_1)
                                      ]),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLightBulb,
                                          height: 67.v,
                                          width: 12.h,
                                          margin: EdgeInsets.only(
                                              left: 15.h, bottom: 6.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h, top: 49.v),
                                          child: Text(
                                              "msg_labadi_beach_hotel".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]))
                          ])),
                      SizedBox(height: 47.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h, right: 73.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFrame1050x50,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                radius: BorderRadius.circular(25.h)),
                            Container(
                                height: 43.v,
                                width: 121.h,
                                margin: EdgeInsets.only(
                                    left: 10.h, top: 2.v, bottom: 4.v),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("lbl_sam_altman".tr,
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              width: 119.h,
                                              margin: EdgeInsets.only(
                                                  left: 2.h, top: 19.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                        width: 47.h,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgInterfaceStarOrange400,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 3
                                                                              .v),
                                                                  child: Text(
                                                                      "lbl_4_3"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .labelLargeBlack900_1))
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 6.v),
                                                        child: Text(
                                                            "lbl_235_ratings"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .labelMediumBlack900))
                                                  ])))
                                    ])),
                            Spacer(),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 16.v, bottom: 15.v),
                                child: Text("lbl_see_profile".tr,
                                    style: CustomTextStyles.labelLargeBlack900))
                          ])),
                      SizedBox(height: 33.v),
                      Text("msg_how_many_passengers".tr,
                          style: CustomTextStyles.titleLargeBlack900_1),
                      SizedBox(height: 21.v),
                      Container(
                          margin: EdgeInsets.only(left: 27.h, right: 54.h),
                          padding: EdgeInsets.all(1.h),
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 163.h,
                                    margin: EdgeInsets.only(left: 1.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomElevatedButton(
                                              height: 40.v,
                                              width: 63.h,
                                              text: "lbl".tr,
                                              buttonStyle: CustomButtonStyles
                                                  .fillWhiteATL15,
                                              buttonTextStyle:
                                                  theme.textTheme.titleLarge!),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5.v, bottom: 4.v),
                                              child: Text("lbl_16".tr,
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                CustomElevatedButton(
                                    height: 40.v,
                                    width: 63.h,
                                    text: "lbl2".tr,
                                    buttonStyle:
                                        CustomButtonStyles.fillWhiteATL15,
                                    buttonTextStyle:
                                        theme.textTheme.titleLarge!)
                              ])),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text("lbl_seat_selection".tr,
                              style: CustomTextStyles.titleLargeBlack900_1)),
                      SizedBox(height: 26.v),
                      _buildKoppelSeats(context),
                      SizedBox(height: 9.v)
                    ])),
            bottomNavigationBar: _buildOrder(context)));
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
        title: AppbarTitle(
            text: "msg_reservation_request".tr,
            margin: EdgeInsets.only(left: 72.h)));
  }

  /// Section Widget
  Widget _buildKoppelSeats(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Consumer(builder: (context, ref, _) {
                return GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 49.v,
                        crossAxisCount: 7,
                        mainAxisSpacing: 13.h,
                        crossAxisSpacing: 13.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: ref
                            .watch(koppelSeatsNotifier)
                            .koppelSeatsModelObj
                            ?.frameItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      FrameItemModel model = ref
                              .watch(koppelSeatsNotifier)
                              .koppelSeatsModelObj
                              ?.frameItemList[index] ??
                          FrameItemModel();
                      return FrameItemWidget(model);
                    });
              })),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: _buildSixteen(context,
                        lockImage: ImageConstant.imgInterfaceLockOpen,
                        labelText: "lbl_15".tr)),
                Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: _buildSixteen(context,
                        lockImage: ImageConstant.imgInterfaceLock,
                        labelText: "lbl_16".tr))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildOrder(BuildContext context) {
    return CustomElevatedButton(
        width: 298.h,
        text: "lbl_order".tr,
        margin: EdgeInsets.only(left: 67.h, right: 65.h, bottom: 35.v));
  }

  /// Common widget
  Widget _buildSixteen(
    BuildContext context, {
    required String lockImage,
    required String labelText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 1.v),
        decoration: AppDecoration.outlineBlack9003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              CustomImageView(
                  imagePath: lockImage,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(left: 1.h)),
              SizedBox(height: 3.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(labelText,
                      style: CustomTextStyles.titleSmallWhiteA700.copyWith(
                          color: appTheme.whiteA700.withOpacity(0.8))))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
