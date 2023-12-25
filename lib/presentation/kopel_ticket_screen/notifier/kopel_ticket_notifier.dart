import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:koppel/presentation/kopel_ticket_screen/models/kopel_ticket_model.dart';
part 'kopel_ticket_state.dart';

final kopelTicketNotifier =
    StateNotifierProvider<KopelTicketNotifier, KopelTicketState>((ref) =>
        KopelTicketNotifier(
            KopelTicketState(kopelTicketModelObj: KopelTicketModel())));

/// A notifier that manages the state of a KopelTicket according to the event that is dispatched to it.
class KopelTicketNotifier extends StateNotifier<KopelTicketState> {
  KopelTicketNotifier(KopelTicketState state) : super(state);
}
