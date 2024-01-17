import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class SharedPref {
  SharedPref(this._pref);

  final String _sessionToken = 'sessionToken';
  final SharedPreferences _pref;

  Future<String> getToken() async {
    return _pref.getString(_sessionToken) ?? '';
  }

  Future<void> setToken(String sessionToken) async {
    await _pref.setString(_sessionToken, sessionToken);
  }
}
