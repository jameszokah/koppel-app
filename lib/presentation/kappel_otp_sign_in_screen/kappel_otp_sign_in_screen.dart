import 'notifier/kappel_otp_sign_in_notifier.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/custom_elevated_button.dart';
import 'package:koppel/widgets/custom_icon_button.dart';
import 'package:koppel/widgets/custom_phone_number.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class KappelOtpSignInScreen extends ConsumerStatefulWidget {
  const KappelOtpSignInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KappelOtpSignInScreenState createState() => KappelOtpSignInScreenState();
}

class KappelOtpSignInScreenState extends ConsumerState<KappelOtpSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 893.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSpline,
                height: 559.v,
                width: 373.h,
                alignment: Alignment.bottomLeft,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHexagon,
                height: 199.v,
                width: 115.h,
                radius: BorderRadius.circular(
                  30.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 42.v),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 822.v,
                  width: 307.h,
                  padding: EdgeInsets.only(
                    left: 55.h,
                    right: 55.h,
                    bottom: 125.v,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder60,
                  ),
                  child: CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    alignment: Alignment.bottomRight,
                    child: CustomImageView(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 36.h,
                    top: 77.v,
                    right: 36.h,
                  ),
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    gradient: LinearGradient(
                      begin: Alignment(0.39, -0.42),
                      end: Alignment(0.5, 1),
                      colors: [
                        appTheme.whiteA700,
                        appTheme.whiteA700.withOpacity(0),
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 29.h,
                        vertical: 44.v,
                      ),
                      decoration: AppDecoration.outline.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "lbl_otp_sign_in".tr,
                            style: theme.textTheme.displaySmall,
                          ),
                          SizedBox(height: 18.v),
                          Text(
                            "msg_welcome_back_we".tr,
                            style: CustomTextStyles.titleSmallBlack900_1,
                          ),
                          SizedBox(height: 22.v),
                          _buildFrameSix(context),
                          SizedBox(height: 24.v),
                          CustomElevatedButton(
                            text: "lbl_get_code".tr,
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 6.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowRight,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                          ),
                          SizedBox(height: 24.v),
                          SizedBox(
                            height: 20.v,
                            width: 298.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 7.v),
                                    child: SizedBox(
                                      width: 298.h,
                                      child: Divider(
                                        color:
                                            appTheme.black900.withOpacity(0.1),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "lbl_or".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_didn_t_get_code2".tr,
                                  style: CustomTextStyles.bodyMedium13_1,
                                ),
                                TextSpan(
                                  text: "lbl_resend".tr,
                                  style: CustomTextStyles.bodyMediumTeal700
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 25.v),
                        ],
                      ),
                    ),
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
  Widget _buildFrameSix(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 7.v),
        Consumer(
          builder: (context, ref, _) {
            return CustomPhoneNumber(
              country: ref.watch(kappelOtpSignInNotifier).selectedCountry ??
                  CountryPickerUtils.getCountryByPhoneCode('1'),
              controller:
                  ref.watch(kappelOtpSignInNotifier).phoneNumberController,
              onTap: (Country value) {
                ref.watch(kappelOtpSignInNotifier).selectedCountry = value;
              },
            );
          },
        ),
      ],
    );
  }
}
