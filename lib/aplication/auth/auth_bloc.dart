import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';

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
      final appUser = await facade.logIn(
        formValues['email']!,
        formValues['password']!,
      );
      l.i('*-' * 100);
      l.i(appUser);
      l.i('*-' * 100);
      emit(
        state.copyWith(
          appUser: appUser,
          error: null,
        ),
      );
      getIt<AppRouter>().replaceAll([const DashBoardRoute()]);
      l.i('State->$state');
    });
    on<_SignInFromForm>((event, emit) async {
      final formValues = event.formValues;
      await facade.signIn(formValues['email']!, formValues['password']!);
    });
    on<_LogOut>(
      (event, emit) => facade.logOut(),
    );
  }
}
