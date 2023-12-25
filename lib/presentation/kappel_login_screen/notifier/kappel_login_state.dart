// ignore_for_file: must_be_immutable

part of 'kappel_login_notifier.dart';

/// Represents the state of KappelLogin in the application.
class KappelLoginState extends Equatable {
  KappelLoginState({
    this.emailController,
    this.passwordController,
    this.kappelLoginModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  KappelLoginModel? kappelLoginModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        kappelLoginModelObj,
      ];

  KappelLoginState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    KappelLoginModel? kappelLoginModelObj,
  }) {
    return KappelLoginState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      kappelLoginModelObj: kappelLoginModelObj ?? this.kappelLoginModelObj,
    );
  }
}
