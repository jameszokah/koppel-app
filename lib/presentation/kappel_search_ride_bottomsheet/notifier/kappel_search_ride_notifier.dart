import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:koppel/presentation/kappel_search_ride_bottomsheet/models/kappel_search_ride_model.dart';
part 'kappel_search_ride_state.dart';

final kappelSearchRideNotifier =
    StateNotifierProvider<KappelSearchRideNotifier, KappelSearchRideState>(
  (ref) => KappelSearchRideNotifier(KappelSearchRideState(
    kappelSearchRideModelObj: KappelSearchRideModel(),
  )),
);

/// A notifier that manages the state of a KappelSearchRide according to the event that is dispatched to it.
class KappelSearchRideNotifier extends StateNotifier<KappelSearchRideState> {
  KappelSearchRideNotifier(KappelSearchRideState state) : super(state) {}
}
