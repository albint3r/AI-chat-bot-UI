import 'package:injectable/injectable.dart';
import 'package:l/l.dart';

import '../../domain/auth/app_user.dart';
import '../../domain/auth/i_auth_data_source.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../core/shared_pref.dart';

@Injectable(as: IAuthFacade)
class AuthFacadeImpl implements IAuthFacade {
  const AuthFacadeImpl(
    this._pref,
    this._dataSource,
  );

  final SharedPref _pref;
  final IAuthDataSource _dataSource;

  @override
  SharedPref get pref => _pref;

  @override
  Future<AppUser> logIn(String email, String password) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() => _pref.deleteToken();

  @override
  Future<AppUser?> loginFromSessionToken() async {
    // Check if session Token exist en share preference.
    final sessionToken = _pref.getToken();
    if (sessionToken.isEmpty) {
      l.i('Not existent session Token.');
      return null;
    }
    // If exist Get User Credential
    print('*-' * 100);
    print(sessionToken);
    print('*-' * 100);
    final authResponse = await _dataSource.logInFromSessionToken(
      sessionToken,
    );
    // Update token for a new one.
    _pref.setToken(authResponse.sessionToken);
    return authResponse.appUser;
  }

  @override
  Future<void> saveSessionTokenInPref(String sessionToken) {
    // TODO: implement saveSessionTokenInPref
    throw UnimplementedError();
  }

  @override
  Future<AppUser> signIn(String email, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
