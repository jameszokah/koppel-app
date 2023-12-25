// ignore_for_file: must_be_immutable

part of 'koppel_meet_driver_notifier.dart';

/// Represents the state of KoppelMeetDriver in the application.
class KoppelMeetDriverState extends Equatable {
  KoppelMeetDriverState({
    this.sixteenController,
    this.twentyController,
    this.koppelMeetDriverModelObj,
  });

  TextEditingController? sixteenController;

  TextEditingController? twentyController;

  KoppelMeetDriverModel? koppelMeetDriverModelObj;

  @override
  List<Object?> get props => [
        sixteenController,
        twentyController,
        koppelMeetDriverModelObj,
      ];

  KoppelMeetDriverState copyWith({
    TextEditingController? sixteenController,
    TextEditingController? twentyController,
    KoppelMeetDriverModel? koppelMeetDriverModelObj,
  }) {
    return KoppelMeetDriverState(
      sixteenController: sixteenController ?? this.sixteenController,
      twentyController: twentyController ?? this.twentyController,
      koppelMeetDriverModelObj:
          koppelMeetDriverModelObj ?? this.koppelMeetDriverModelObj,
    );
  }
}
