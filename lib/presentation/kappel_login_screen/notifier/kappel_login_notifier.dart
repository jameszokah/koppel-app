import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:koppel/presentation/kappel_login_screen/models/kappel_login_model.dart';
part 'kappel_login_state.dart';

final kappelLoginNotifier =
    StateNotifierProvider<KappelLoginNotifier, KappelLoginState>(
  (ref) => KappelLoginNotifier(KappelLoginState(
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
    kappelLoginModelObj: KappelLoginModel(),
  )),
);

/// A notifier that manages the state of a KappelLogin according to the event that is dispatched to it.
class KappelLoginNotifier extends StateNotifier<KappelLoginState> {
  KappelLoginNotifier(KappelLoginState state) : super(state) {}
}
