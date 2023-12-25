// ignore_for_file: must_be_immutable

part of 'kappel_otp_sign_in_notifier.dart';

/// Represents the state of KappelOtpSignIn in the application.
class KappelOtpSignInState extends Equatable {
  KappelOtpSignInState({
    this.phoneNumberController,
    this.selectedCountry,
    this.kappelOtpSignInModelObj,
  });

  TextEditingController? phoneNumberController;

  KappelOtpSignInModel? kappelOtpSignInModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        kappelOtpSignInModelObj,
      ];

  KappelOtpSignInState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    KappelOtpSignInModel? kappelOtpSignInModelObj,
  }) {
    return KappelOtpSignInState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      kappelOtpSignInModelObj:
          kappelOtpSignInModelObj ?? this.kappelOtpSignInModelObj,
    );
  }
}
