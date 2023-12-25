// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [koppel_seats_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KoppelSeatsModel extends Equatable {
  KoppelSeatsModel({this.frameItemList = const []}) {}

  List<FrameItemModel> frameItemList;

  KoppelSeatsModel copyWith({List<FrameItemModel>? frameItemList}) {
    return KoppelSeatsModel(
      frameItemList: frameItemList ?? this.frameItemList,
    );
  }

  @override
  List<Object?> get props => [frameItemList];
}
