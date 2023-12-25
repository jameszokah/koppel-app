// ignore_for_file: must_be_immutable

part of 'kappel_about_notifier.dart';

/// Represents the state of KappelAbout in the application.
class KappelAboutState extends Equatable {
  KappelAboutState({this.kappelAboutModelObj});

  KappelAboutModel? kappelAboutModelObj;

  @override
  List<Object?> get props => [
        kappelAboutModelObj,
      ];

  KappelAboutState copyWith({KappelAboutModel? kappelAboutModelObj}) {
    return KappelAboutState(
      kappelAboutModelObj: kappelAboutModelObj ?? this.kappelAboutModelObj,
    );
  }
}
