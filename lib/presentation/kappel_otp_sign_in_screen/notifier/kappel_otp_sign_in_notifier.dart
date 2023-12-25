import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:koppel/presentation/kappel_otp_sign_in_screen/models/kappel_otp_sign_in_model.dart';
part 'kappel_otp_sign_in_state.dart';

final kappelOtpSignInNotifier =
    StateNotifierProvider<KappelOtpSignInNotifier, KappelOtpSignInState>(
  (ref) => KappelOtpSignInNotifier(KappelOtpSignInState(
    phoneNumberController: TextEditingController(),
    selectedCountry: CountryPickerUtils.getCountryByPhoneCode('1'),
    kappelOtpSignInModelObj: KappelOtpSignInModel(),
  )),
);

/// A notifier that manages the state of a KappelOtpSignIn according to the event that is dispatched to it.
class KappelOtpSignInNotifier extends StateNotifier<KappelOtpSignInState> {
  KappelOtpSignInNotifier(KappelOtpSignInState state) : super(state) {}
}
