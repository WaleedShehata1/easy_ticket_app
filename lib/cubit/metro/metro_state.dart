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

class MetroLineSuccess extends MetroState {
  final metroData? metroLine_stations;
  MetroLineSuccess(this.metroLine_stations);
}

class MetroLineError extends MetroState {
  final String error;
  MetroLineError(this.error);
}
