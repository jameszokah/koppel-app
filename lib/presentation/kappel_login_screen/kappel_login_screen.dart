import 'notifier/kappel_login_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:koppel/core/app_export.dart';
import 'package:koppel/widgets/custom_elevated_button.dart';
import 'package:koppel/widgets/custom_icon_button.dart';
import 'package:koppel/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class KappelLoginScreen extends ConsumerStatefulWidget {
  const KappelLoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KappelLoginScreenState createState() => KappelLoginScreenState();
}

class KappelLoginScreenState extends ConsumerState<KappelLoginScreen> {
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
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 78.v),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder60,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildHorizontalScrollFortyEight(context),
                      SizedBox(height: 44.v),
                      CustomIconButton(
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        child: CustomImageView(),
                      ),
                    ],
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
  Widget _buildSignInFrame(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email".tr,
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 8.v),
        Padding(
          padding: EdgeInsets.only(right: 66.h),
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
                appTheme.indigo1008c,
                appTheme.blueGray30033,
              ],
            ),
            corners: Corners(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: Consumer(
              builder: (context, ref, _) {
                return CustomTextFormField(
                  controller: ref.watch(kappelLoginNotifier).emailController,
                  prefix: Padding(
                    padding: EdgeInsets.fromLTRB(8.h, 8.v, 30.h, 6.v),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 6.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ],
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 50.v,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordFrame(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(
                "lbl_password".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 228.h),
              child: Text(
                "lbl_forgot_password".tr,
                textAlign: TextAlign.right,
                style: CustomTextStyles.titleSmallBlack900_2,
              ),
            ),
          ],
        ),
        SizedBox(height: 6.v),
        Padding(
          padding: EdgeInsets.only(right: 66.h),
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
                appTheme.indigo1008c,
                appTheme.blueGray30033,
              ],
            ),
            corners: Corners(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: Consumer(
              builder: (context, ref, _) {
                return CustomTextFormField(
                  controller: ref.watch(kappelLoginNotifier).passwordController,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 6.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 50.v,
                  ),
                  obscureText: true,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHorizontalScrollFortyEight(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 36.h),
        child: IntrinsicWidth(
          child: SizedBox(
            height: 656.v,
            width: 394.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
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
                      height: 656.v,
                      width: 358.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                        borderRadius: BorderRadius.circular(
                          20.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black900,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 87.h),
                          child: Text(
                            "lbl_sign_in".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.displaySmall,
                          ),
                        ),
                      ),
                      SizedBox(height: 18.v),
                      Text(
                        "msg_access_and_secure".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallBlack900_1,
                      ),
                      SizedBox(height: 22.v),
                      _buildSignInFrame(context),
                      SizedBox(height: 24.v),
                      _buildPasswordFrame(context),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                        text: "lbl_sign_in".tr,
                        rightIcon: Container(
                          margin: EdgeInsets.only(),
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
                        width: 364.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 7.v),
                                child: SizedBox(
                                  width: 364.h,
                                  child: Divider(
                                    color: appTheme.black900.withOpacity(0.1),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 138.h),
                                child: Text(
                                  "lbl_or".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 31.h),
                          child: Text(
                            "msg_sign_up_with_email".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMedium13,
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 64.adaptSize,
                            width: 64.adaptSize,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUserWhiteA700,
                            ),
                          ),
                          Container(
                            height: 64.adaptSize,
                            width: 64.adaptSize,
                            margin: EdgeInsets.only(left: 122.h),
                            padding: EdgeInsets.all(14.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgLogo,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgAppleOutlineColor,
                              height: 36.adaptSize,
                              width: 36.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            height: 64.adaptSize,
                            width: 64.adaptSize,
                            margin: EdgeInsets.only(left: 122.h),
                            padding: EdgeInsets.all(14.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgLogoTeal700,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGoogleOutlineColor,
                              height: 36.adaptSize,
                              width: 36.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
