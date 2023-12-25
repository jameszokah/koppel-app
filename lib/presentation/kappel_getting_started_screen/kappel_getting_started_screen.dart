import 'notifier/kappel_getting_started_notifier.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/custom_elevated_button.dart';

class KappelGettingStartedScreen extends ConsumerStatefulWidget {
  const KappelGettingStartedScreen({Key? key}) : super(key: key);

  @override
  KappelGettingStartedScreenState createState() =>
      KappelGettingStartedScreenState();
}

class KappelGettingStartedScreenState
    extends ConsumerState<KappelGettingStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 893.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topRight, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgSpline,
                      height: 559.v,
                      width: 373.h,
                      alignment: Alignment.bottomLeft),
                  CustomImageView(
                      imagePath: ImageConstant.imgHexagon,
                      height: 199.v,
                      width: 115.h,
                      radius: BorderRadius.circular(30.h),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 42.v)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.h, vertical: 149.v),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder60),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 292.h,
                                    margin: EdgeInsets.only(
                                        left: 14.h, right: 75.h),
                                    child: Text("msg_premium_transportation".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .displaySmallBlack
                                            .copyWith(height: 1.14))),
                                SizedBox(height: 78.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: 255.h,
                                        margin: EdgeInsets.only(right: 8.h),
                                        child: Text("msg_manage_your_rides".tr,
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
                                            style: theme
                                                .textTheme.headlineMedium))),
                                Spacer(),
                                SizedBox(height: 10.v),
                                SizedBox(
                                    height: 80.v,
                                    width: 279.h,
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  height: 80.v,
                                                  width: 169.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.teal700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.h)))),
                                          CustomElevatedButton(
                                              height: 75.v,
                                              width: 250.h,
                                              text: "lbl_getting_started".tr,
                                              buttonStyle:
                                                  CustomButtonStyles.fillWhiteA,
                                              buttonTextStyle: CustomTextStyles
                                                  .headlineSmallBlack900,
                                              alignment: Alignment.centerRight)
                                        ]))
                              ])))
                ]))));
  }
}
