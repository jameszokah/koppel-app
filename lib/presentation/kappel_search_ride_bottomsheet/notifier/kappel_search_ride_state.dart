// ignore_for_file: must_be_immutable

part of 'kappel_search_ride_notifier.dart';

/// Represents the state of KappelSearchRide in the application.
class KappelSearchRideState extends Equatable {
  KappelSearchRideState({this.kappelSearchRideModelObj});

  KappelSearchRideModel? kappelSearchRideModelObj;

  @override
  List<Object?> get props => [
        kappelSearchRideModelObj,
      ];

  KappelSearchRideState copyWith(
      {KappelSearchRideModel? kappelSearchRideModelObj}) {
    return KappelSearchRideState(
      kappelSearchRideModelObj:
          kappelSearchRideModelObj ?? this.kappelSearchRideModelObj,
    );
  }
}
