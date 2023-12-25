// ignore_for_file: must_be_immutable

part of 'koppel_seats_notifier.dart';

/// Represents the state of KoppelSeats in the application.
class KoppelSeatsState extends Equatable {
  KoppelSeatsState({this.koppelSeatsModelObj});

  KoppelSeatsModel? koppelSeatsModelObj;

  @override
  List<Object?> get props => [
        koppelSeatsModelObj,
      ];

  KoppelSeatsState copyWith({KoppelSeatsModel? koppelSeatsModelObj}) {
    return KoppelSeatsState(
      koppelSeatsModelObj: koppelSeatsModelObj ?? this.koppelSeatsModelObj,
    );
  }
}
