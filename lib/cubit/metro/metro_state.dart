part of 'metro_cubit.dart';

@immutable
abstract class MetroState {}

class MetroInitial extends MetroState {}

class MetroLoading extends MetroState {}

class MetroSuccess extends MetroState {
  final MetroTicket? metro_ticket;
  MetroSuccess(this.metro_ticket);
}

class MetroError extends MetroState {
  final String error;
  MetroError(this.error);
}
