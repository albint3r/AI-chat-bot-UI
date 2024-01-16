import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class SharedPref {
  SharedPref(this._pref);

  final String _token = 'token';
  final SharedPreferences _pref;

  Future<String> getToken() async {
    return _pref.getString(_token) ?? '';
  }

  Future<void> setToken(String token) async {
    await _pref.setString(_token, token);
  }
}
