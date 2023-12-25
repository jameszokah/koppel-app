import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:koppel/presentation/kappel_about_screen/models/kappel_about_model.dart';
part 'kappel_about_state.dart';

final kappelAboutNotifier =
    StateNotifierProvider<KappelAboutNotifier, KappelAboutState>(
  (ref) => KappelAboutNotifier(KappelAboutState(
    kappelAboutModelObj: KappelAboutModel(),
  )),
);

/// A notifier that manages the state of a KappelAbout according to the event that is dispatched to it.
class KappelAboutNotifier extends StateNotifier<KappelAboutState> {
  KappelAboutNotifier(KappelAboutState state) : super(state) {}
}
