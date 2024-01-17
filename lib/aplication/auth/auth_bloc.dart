import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/core/shared_pref.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(SharedPref sharedPref) : super(AuthState.initial()) {
    on<_ValidateToken>((event, emit) async {
      print('*-' * 100);
      await sharedPref.setToken('This is the new token');
      final sessionToken = await sharedPref.getToken();
      print('sessionToken-> $sessionToken');
      print('*-' * 100);
    });
  }
}
