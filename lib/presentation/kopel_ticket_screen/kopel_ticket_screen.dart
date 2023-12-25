import 'notifier/kopel_ticket_notifier.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:koppel/widgets/app_bar/appbar_title.dart';
import 'package:koppel/widgets/app_bar/appbar_trailing_image.dart';
import 'package:koppel/widgets/app_bar/custom_app_bar.dart';
import 'package:koppel/widgets/custom_elevated_button.dart';

class KopelTicketScreen extends ConsumerStatefulWidget {
  const KopelTicketScreen({Key? key}) : super(key: key);

  @override
  KopelTicketScreenState createState() => KopelTicketScreenState();
}

class KopelTicketScreenState extends ConsumerState<KopelTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: Column(children: [
                  Text("msg_your_ticket_is_ready".tr,
                      style: CustomTextStyles.headlineSmallSemiBold),
                  SizedBox(height: 15.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 17.v),
                      decoration: AppDecoration.outlineBlack9004.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 9.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h, right: 7.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomElevatedButton(
                                          height: 44.v,
                                          width: 154.h,
                                          text: "lbl_koppel".tr,
                                          buttonStyle:
                                              CustomButtonStyles.fillTealCc,
                                          buttonTextStyle: CustomTextStyles
                                              .titleLargeWhiteA700),
                                      Padding(
                                          padding: EdgeInsets.only(top: 6.v),
                                          child: Text("lbl_gn_1329_21".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBlack900SemiBold))
                                    ])),
                            SizedBox(height: 24.v),
                            Divider(
                                color: appTheme.black900.withOpacity(0.2),
                                indent: 35.h,
                                endIndent: 35.h),
                            SizedBox(height: 17.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("lbl_11_25".tr,
                                          style: theme.textTheme.headlineSmall),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.h,
                                              top: 10.v,
                                              bottom: 4.v),
                                          child: Text("lbl_am".tr,
                                              style: CustomTextStyles
                                                  .titleSmallBlack900_3)),
                                      Spacer(flex: 50),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 4.v),
                                          child: Column(children: [
                                            Text("lbl_0h_30m".tr,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgSettings,
                                                height: 12.v,
                                                width: 55.h)
                                          ])),
                                      Spacer(flex: 49),
                                      Text("lbl_11_55".tr,
                                          style: theme.textTheme.headlineSmall),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.h,
                                              top: 10.v,
                                              bottom: 4.v),
                                          child: Text("lbl_am".tr,
                                              style: CustomTextStyles
                                                  .titleSmallBlack900_3))
                                    ])),
                            SizedBox(height: 8.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 134.h,
                                      margin: EdgeInsets.only(top: 1.v),
                                      child: Text("msg_nungua_buade_last".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleSmallBlack90014_1
                                              .copyWith(height: 1.50))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 77.h, bottom: 23.v),
                                      child: Text("msg_labadi_beach_hotel".tr,
                                          style: CustomTextStyles
                                              .titleSmallBlack90014_1))
                                ]),
                            SizedBox(height: 25.v),
                            Divider(
                                color: appTheme.black900.withOpacity(0.2),
                                indent: 35.h,
                                endIndent: 35.h),
                            SizedBox(height: 11.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 14.h, right: 34.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_jun_15_2023".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumMedium),
                                                    SizedBox(height: 2.v),
                                                    Text("lbl_date".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallBlack90014)
                                                  ])),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 6.v),
                                              child: Column(children: [
                                                Container(
                                                    width: 61.h,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 24.h,
                                                            vertical: 1.v),
                                                    decoration: AppDecoration
                                                        .fillTealCc
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Text("lbl_16".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeWhiteA700)),
                                                SizedBox(height: 3.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 4.h),
                                                        child: Text(
                                                            "lbl_seats".tr,
                                                            style: CustomTextStyles
                                                                .titleSmallBlack90014)))
                                              ]))
                                        ]))),
                            SizedBox(height: 24.v),
                            Divider(
                                color: appTheme.black900.withOpacity(0.2),
                                indent: 35.h,
                                endIndent: 35.h),
                            SizedBox(height: 12.v),
                            Container(
                                margin: EdgeInsets.only(left: 2.h),
                                padding: EdgeInsets.symmetric(horizontal: 17.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_ghs_10_00".tr,
                                          style: CustomTextStyles
                                              .titleMediumMedium),
                                      Text("lbl_price".tr,
                                          style: CustomTextStyles
                                              .titleSmallBlack90014)
                                    ])),
                            SizedBox(height: 29.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text("lbl_cash".tr,
                                        style: CustomTextStyles
                                            .titleMediumMedium))),
                            SizedBox(height: 2.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: Text("lbl_payment_method".tr,
                                        style: CustomTextStyles
                                            .titleSmallBlack90014)))
                          ])),
                  SizedBox(height: 5.v),
                  _buildBarcode(context)
                ])),
            bottomNavigationBar: _buildDownloadTicket(context)));
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
        title: AppbarTitle(text: "lbl_ticket".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgTwitter,
              margin: EdgeInsets.fromLTRB(43.h, 14.v, 43.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildBarcode(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: appTheme.black900.withOpacity(0.62), width: 1.h),
            borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Container(
            height: 142.v,
            width: 366.h,
            padding: EdgeInsets.fromLTRB(29.h, 13.v, 29.h, 14.v),
            decoration: AppDecoration.outlineBlack9005,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 8.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 76.v,
                                width: 6.h,
                                margin: EdgeInsets.only(bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 6.h,
                                margin:
                                    EdgeInsets.only(left: 12.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 12.h,
                                margin:
                                    EdgeInsets.only(left: 9.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 12.h,
                                margin:
                                    EdgeInsets.only(left: 6.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 12.h,
                                margin:
                                    EdgeInsets.only(left: 6.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 6.h,
                                margin:
                                    EdgeInsets.only(left: 3.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 6.h,
                                margin:
                                    EdgeInsets.only(left: 12.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 6.h,
                                margin:
                                    EdgeInsets.only(left: 12.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 9.h,
                                margin:
                                    EdgeInsets.only(left: 3.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Container(
                                height: 76.v,
                                width: 6.h,
                                margin:
                                    EdgeInsets.only(left: 3.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Container(
                                height: 76.v,
                                width: 9.h,
                                margin:
                                    EdgeInsets.only(left: 9.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900)),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: SizedBox(
                                    height: 89.v,
                                    child: VerticalDivider(
                                        width: 3.h,
                                        thickness: 3.v,
                                        endIndent: 13.h))),
                            Container(
                                height: 76.v,
                                width: 6.h,
                                margin:
                                    EdgeInsets.only(left: 3.h, bottom: 13.v),
                                decoration:
                                    BoxDecoration(color: appTheme.black900))
                          ]))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("lbl_koppel2".tr,
                      style: CustomTextStyles.bodyLargeInterBlack900))
            ])));
  }

  /// Section Widget
  Widget _buildDownloadTicket(BuildContext context) {
    return CustomElevatedButton(
        width: 298.h,
        text: "lbl_download_ticket".tr,
        margin: EdgeInsets.only(left: 67.h, right: 65.h, bottom: 35.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
