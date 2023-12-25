// ignore_for_file: must_be_immutable

part of 'kappel_getting_started_notifier.dart';

/// Represents the state of KappelGettingStarted in the application.
class KappelGettingStartedState extends Equatable {
  KappelGettingStartedState({this.kappelGettingStartedModelObj});

  KappelGettingStartedModel? kappelGettingStartedModelObj;

  @override
  List<Object?> get props => [
        kappelGettingStartedModelObj,
      ];

  KappelGettingStartedState copyWith(
      {KappelGettingStartedModel? kappelGettingStartedModelObj}) {
    return KappelGettingStartedState(
      kappelGettingStartedModelObj:
          kappelGettingStartedModelObj ?? this.kappelGettingStartedModelObj,
    );
  }
}
