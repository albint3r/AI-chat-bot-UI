import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/app_user.dart';
import '../../domain/auth/errors/auth_error.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../injectables.dart';
import '../../presentation/core/router/app_router.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

// todo: Why lazySingleton work with the Nav Interceptor Auth validator????
@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(IAuthFacade facade) : super(AuthState.initial()) {
    on<_ValidateToken>((event, emit) async {
      try {
        final appUser = await facade.loginFromSessionToken();
        if (appUser is AppUser) {
          emit(
            state.copyWith(
              appUser: appUser,
              error: null,
            ),
          );
        }
        emit(
          state.copyWith(
            isLoading: false,
          ),
        );
      } catch (e) {
        facade.pref.deleteToken();
        throw "This is the new error: $e";
      }
    });
    on<_LogInFromForm>((event, emit) async {
      final formValues = event.formValues;
      await _handleFormEvent(
        formValues,
        facade.logIn, // use logIn
        emit,
        getIt<AppRouter>(),
      );
    });
    on<_SignInFromForm>((event, emit) async {
      final formValues = event.formValues;
      await _handleFormEvent(
        formValues,
        facade.signIn, // use logIn
        emit,
        getIt<AppRouter>(),
      );
    });
    on<_LogOut>(
      (event, emit) {
        facade.logOut();
        emit(
          state.copyWith(
            appUser: null,
          ),
        );
      },
    );
  }

  Future<void> _handleFormEvent(
    Map<String, String> formValues,
    AuthenticationFunction authenticationFunction,
    Emitter<AuthState> emit,
    AppRouter router,
  ) async {
    final appUser = await authenticationFunction(
      formValues['email']!,
      formValues['password']!,
    );
    emit(
      state.copyWith(
        appUser: appUser,
        error: null,
      ),
    );
    router.replaceAll([const DashBoardRoute()]);
  }
}

typedef AuthenticationFunction = Future<AppUser> Function(String, String);
