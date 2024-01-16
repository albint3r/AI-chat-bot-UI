import 'package:shared_preferences/shared_preferences.dart';

import 'schemas/auth_response.dart';

abstract interface class IAuthFacade {
  SharedPreferences get pref;

  Future<AuthResponse> loginFromSessionToken(
    String sessionToken,
  );

  Future<AuthResponse> logIn(
    String email,
    String password,
  );

  Future<AuthResponse> signIn(
    String email,
    String password,
  );

  Future<void> logOut();

  Future<void> saveSessionTokenInPref(
    String sessionToken,
  );

  Future<void> deleteSessionTokenInPref();
}
