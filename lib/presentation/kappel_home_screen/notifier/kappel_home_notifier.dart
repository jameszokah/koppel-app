import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:koppel/presentation/kappel_home_screen/models/kappel_home_model.dart';
part 'kappel_home_state.dart';

final kappelHomeNotifier =
    StateNotifierProvider<KappelHomeNotifier, KappelHomeState>(
  (ref) => KappelHomeNotifier(KappelHomeState(
    searchController: TextEditingController(),
    kappelHomeModelObj: KappelHomeModel(viewhierarchyItemList: [
      ViewhierarchyItemModel(
          navigationIcon: ImageConstant.imgNavigationHouse01,
          homeText: "Home",
          locationText: "Current location"),
      ViewhierarchyItemModel(
          navigationIcon: ImageConstant.imgNavigationBuilding02,
          homeText: "School",
          locationText: "Current location")
    ]),
  )),
);

/// A notifier that manages the state of a KappelHome according to the event that is dispatched to it.
class KappelHomeNotifier extends StateNotifier<KappelHomeState> {
  KappelHomeNotifier(KappelHomeState state) : super(state) {}
}
