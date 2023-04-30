abstract class LoginEvent {}

class LoginIdChanged extends LoginEvent {
  final String id;

  LoginIdChanged({this.id});
}

class LoginPasswordChanged extends LoginEvent {
  final String password;

  LoginPasswordChanged({this.password});
}

class LoginSubmitted extends LoginEvent {}