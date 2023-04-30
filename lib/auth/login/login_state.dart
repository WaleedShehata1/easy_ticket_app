import 'package:social_media_app/auth/form_submission_status.dart';

class LoginState {
  final String id;
  bool get isValidUsername => id.length > 3;

  final String password;
  bool get isValidPassword => password.length > 6;

  final FormSubmissionStatus formStatus;

  LoginState({
    this.id = '',
    this.password = '',
    this.formStatus = const InitialFormStatus(),
  });

  LoginState copyWith({
    String id,
    String password,
    FormSubmissionStatus formStatus,
  }) {
    return LoginState(
      id: id ?? this.id,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}