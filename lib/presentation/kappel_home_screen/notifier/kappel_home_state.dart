// ignore_for_file: must_be_immutable

part of 'kappel_home_notifier.dart';

/// Represents the state of KappelHome in the application.
class KappelHomeState extends Equatable {
  KappelHomeState({
    this.searchController,
    this.kappelHomeModelObj,
  });

  TextEditingController? searchController;

  KappelHomeModel? kappelHomeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        kappelHomeModelObj,
      ];

  KappelHomeState copyWith({
    TextEditingController? searchController,
    KappelHomeModel? kappelHomeModelObj,
  }) {
    return KappelHomeState(
      searchController: searchController ?? this.searchController,
      kappelHomeModelObj: kappelHomeModelObj ?? this.kappelHomeModelObj,
    );
  }
}
