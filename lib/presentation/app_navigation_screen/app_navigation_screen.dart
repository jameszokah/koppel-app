import 'notifier/app_navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:koppel/core/app_export.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "kappel/getting-started".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kappelGettingStartedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "kappel/Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kappelLoginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "kappel/otp-sign-in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kappelOtpSignInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "kappel/Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kappelHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "kappel/About".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kappelAboutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "koppel/seats".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.koppelSeatsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "kopel/ticket".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kopelTicketScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "koppel/meet-driver".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.koppelMeetDriverScreen),
                        ),
                      ],
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
