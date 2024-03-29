import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class SharedPref {
  SharedPref(this._pref);

  final String _sessionToken = 'sessionToken';
  final SharedPreferences _pref;

  String getToken() {
    final sessionToken = _pref.getString(_sessionToken);
    return sessionToken is String ? "Bearer $sessionToken" : '';
  }

  Future<void> setToken(String sessionToken) => _pref.setString(
        _sessionToken,
        sessionToken,
      );

  Future<void> deleteToken() => _pref.remove(_sessionToken);
}
