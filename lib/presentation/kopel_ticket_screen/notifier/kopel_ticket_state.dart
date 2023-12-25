// ignore_for_file: must_be_immutable

part of 'kopel_ticket_notifier.dart';

/// Represents the state of KopelTicket in the application.
class KopelTicketState extends Equatable {
  KopelTicketState({this.kopelTicketModelObj});

  KopelTicketModel? kopelTicketModelObj;

  @override
  List<Object?> get props => [
        kopelTicketModelObj,
      ];

  KopelTicketState copyWith({KopelTicketModel? kopelTicketModelObj}) {
    return KopelTicketState(
      kopelTicketModelObj: kopelTicketModelObj ?? this.kopelTicketModelObj,
    );
  }
}
