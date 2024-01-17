import '../../infrastructure/core/shared_pref.dart';
import 'app_user.dart';

abstract interface class IAuthFacade {
  SharedPref get pref;

  Future<AppUser?> loginFromSessionToken();

  Future<AppUser> logIn(
    String email,
    String password,
  );

  Future<AppUser> signIn(
    String email,
    String password,
  );

  Future<void> logOut();

  Future<void> saveSessionTokenInPref(
    String sessionToken,
  );
}
