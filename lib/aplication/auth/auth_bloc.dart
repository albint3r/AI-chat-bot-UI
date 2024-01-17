import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../app.dart';
import '../../domain/auth/app_user.dart';
import '../../domain/auth/errors/auth_error.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../infrastructure/core/shared_pref.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
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
  }
}
