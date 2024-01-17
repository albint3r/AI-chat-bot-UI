part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.validateToken() = _ValidateToken;

  const factory AuthEvent.logInFromForm(
    Map<String, String> formValues,
  ) = _LogInFromForm;

  const factory AuthEvent.signInFromForm(
    Map<String, String> formValues,
  ) = _SignInFromForm;

  const factory AuthEvent.logOut() = _LogOut;
}
