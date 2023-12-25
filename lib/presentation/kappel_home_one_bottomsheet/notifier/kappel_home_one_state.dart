// ignore_for_file: must_be_immutable

part of 'kappel_home_one_notifier.dart';

/// Represents the state of KappelHomeOne in the application.
class KappelHomeOneState extends Equatable {
  KappelHomeOneState({this.kappelHomeOneModelObj});

  KappelHomeOneModel? kappelHomeOneModelObj;

  @override
  List<Object?> get props => [
        kappelHomeOneModelObj,
      ];

  KappelHomeOneState copyWith({KappelHomeOneModel? kappelHomeOneModelObj}) {
    return KappelHomeOneState(
      kappelHomeOneModelObj:
          kappelHomeOneModelObj ?? this.kappelHomeOneModelObj,
    );
  }
}
