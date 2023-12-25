import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:koppel/presentation/koppel_meet_driver_screen/models/koppel_meet_driver_model.dart';
part 'koppel_meet_driver_state.dart';

final koppelMeetDriverNotifier =
    StateNotifierProvider<KoppelMeetDriverNotifier, KoppelMeetDriverState>(
        (ref) => KoppelMeetDriverNotifier(KoppelMeetDriverState(
            sixteenController: TextEditingController(),
            twentyController: TextEditingController(),
            koppelMeetDriverModelObj: KoppelMeetDriverModel())));

/// A notifier that manages the state of a KoppelMeetDriver according to the event that is dispatched to it.
class KoppelMeetDriverNotifier extends StateNotifier<KoppelMeetDriverState> {
  KoppelMeetDriverNotifier(KoppelMeetDriverState state) : super(state);
}
