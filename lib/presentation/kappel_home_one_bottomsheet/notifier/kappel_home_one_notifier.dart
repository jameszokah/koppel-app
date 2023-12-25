import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:koppel/presentation/kappel_home_one_bottomsheet/models/kappel_home_one_model.dart';
part 'kappel_home_one_state.dart';

final kappelHomeOneNotifier =
    StateNotifierProvider<KappelHomeOneNotifier, KappelHomeOneState>(
  (ref) => KappelHomeOneNotifier(KappelHomeOneState(
    kappelHomeOneModelObj: KappelHomeOneModel(),
  )),
);

/// A notifier that manages the state of a KappelHomeOne according to the event that is dispatched to it.
class KappelHomeOneNotifier extends StateNotifier<KappelHomeOneState> {
  KappelHomeOneNotifier(KappelHomeOneState state) : super(state) {}
}
