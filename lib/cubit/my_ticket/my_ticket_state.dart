// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'my_ticket_cubit.dart';

@immutable
abstract class MyTicketState {}

class MyTicketInitial extends MyTicketState {}

class LoadingState extends MyTicketState {}

class showTicketSuccessState extends MyTicketState {
  final showTicketModel? my_ticket;
  showTicketSuccessState(
    this.my_ticket,
  );
}

class showTicketErrorState extends MyTicketState {
  final String error;
  showTicketErrorState(
    this.error,
  );
}
