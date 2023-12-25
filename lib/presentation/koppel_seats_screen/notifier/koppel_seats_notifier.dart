import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import 'package:koppel/presentation/koppel_seats_screen/models/koppel_seats_model.dart';
part 'koppel_seats_state.dart';

final koppelSeatsNotifier =
    StateNotifierProvider<KoppelSeatsNotifier, KoppelSeatsState>(
        (ref) => KoppelSeatsNotifier(KoppelSeatsState(
                koppelSeatsModelObj: KoppelSeatsModel(frameItemList: [
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLockOpen,
                  dynamicText: "1"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLock,
                  dynamicText: "2"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLockOpen,
                  dynamicText: "3"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLockOpen,
                  dynamicText: "4"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLockOpen,
                  dynamicText: "5"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLock,
                  dynamicText: "6"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLock,
                  dynamicText: "7"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLock,
                  dynamicText: "8"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLockOpen,
                  dynamicText: "9"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLockOpen,
                  dynamicText: "10"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLock,
                  dynamicText: "11"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLock,
                  dynamicText: "12"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLockOpen,
                  dynamicText: "13"),
              FrameItemModel(
                  dynamicImage: ImageConstant.imgInterfaceLock,
                  dynamicText: "14")
            ]))));

/// A notifier that manages the state of a KoppelSeats according to the event that is dispatched to it.
class KoppelSeatsNotifier extends StateNotifier<KoppelSeatsState> {
  KoppelSeatsNotifier(KoppelSeatsState state) : super(state);
}
