import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/app_user.dart';
import '../../domain/auth/errors/auth_error.dart';
import '../../domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(IAuthFacade facade) : super(AuthState.initial()) {
    on<_ValidateToken>((event, emit) async {
      try {
        await facade.pref.setToken('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MDU1NDY2NTEsImlhdCI6MTcwNTQ2MDI1MSwic3ViIjoiMDc4MmU4ZjktYjRiYy0xMWVlLTlmNDktMDI0MmFjMTQwMDAyIn0.LpWoExRgZJx8qHTe0IVmYWijAYi93Fe0I3R49E-rrOY');
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
