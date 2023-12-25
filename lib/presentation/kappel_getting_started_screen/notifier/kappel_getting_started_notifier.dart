import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:koppel/presentation/kappel_getting_started_screen/models/kappel_getting_started_model.dart';
part 'kappel_getting_started_state.dart';

final kappelGettingStartedNotifier = StateNotifierProvider<
        KappelGettingStartedNotifier, KappelGettingStartedState>(
    (ref) => KappelGettingStartedNotifier(KappelGettingStartedState(
        kappelGettingStartedModelObj: KappelGettingStartedModel())));

/// A notifier that manages the state of a KappelGettingStarted according to the event that is dispatched to it.
class KappelGettingStartedNotifier
    extends StateNotifier<KappelGettingStartedState> {
  KappelGettingStartedNotifier(KappelGettingStartedState state) : super(state);
}
