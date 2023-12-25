import 'package:flutter/material.dart';
import 'package:koppel/presentation/kappel_getting_started_screen/kappel_getting_started_screen.dart';
import 'package:koppel/presentation/kappel_login_screen/kappel_login_screen.dart';
import 'package:koppel/presentation/kappel_otp_sign_in_screen/kappel_otp_sign_in_screen.dart';
import 'package:koppel/presentation/kappel_home_screen/kappel_home_screen.dart';
import 'package:koppel/presentation/kappel_about_screen/kappel_about_screen.dart';
import 'package:koppel/presentation/koppel_seats_screen/koppel_seats_screen.dart';
import 'package:koppel/presentation/kopel_ticket_screen/kopel_ticket_screen.dart';
import 'package:koppel/presentation/koppel_meet_driver_screen/koppel_meet_driver_screen.dart';
import 'package:koppel/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String kappelGettingStartedScreen =
      '/kappel_getting_started_screen';

  static const String kappelLoginScreen = '/kappel_login_screen';

  static const String kappelOtpSignInScreen = '/kappel_otp_sign_in_screen';

  static const String kappelHomeScreen = '/kappel_home_screen';

  static const String kappelAboutScreen = '/kappel_about_screen';

  static const String koppelSeatsScreen = '/koppel_seats_screen';

  static const String kopelTicketScreen = '/kopel_ticket_screen';

  static const String koppelMeetDriverScreen = '/koppel_meet_driver_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    kappelGettingStartedScreen: (context) => KappelGettingStartedScreen(),
    kappelLoginScreen: (context) => KappelLoginScreen(),
    kappelOtpSignInScreen: (context) => KappelOtpSignInScreen(),
    kappelHomeScreen: (context) => KappelHomeScreen(),
    kappelAboutScreen: (context) => KappelAboutScreen(),
    koppelSeatsScreen: (context) => KoppelSeatsScreen(),
    kopelTicketScreen: (context) => KopelTicketScreen(),
    koppelMeetDriverScreen: (context) => KoppelMeetDriverScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => KappelGettingStartedScreen(),
  };
}
