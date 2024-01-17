part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    AppUser? appUser,
    AuthError? error
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        isLoading: true,
      );
}
