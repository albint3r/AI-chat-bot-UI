import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';

import '../core/shared_pref.dart';

@injectable
class AuthInterceptors extends Interceptor {
  AuthInterceptors(this._pref);

  final SharedPref _pref;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    l.d('REQUEST[${options.method}] => PATH: ${options.path}');
    // If Token exist add header to
    final sessionToken = _pref.getToken();
    // Add Session token to navigation user headers
    if (sessionToken.isNotEmpty) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $sessionToken';
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    l.d('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode;
    l.d('ERROR[$statusCode] => PATH: ${err.requestOptions.path}');
    // If Have error session Token terminate the user session.
    if (statusCode == 401 || statusCode == 403) await _pref.deleteToken();
    super.onError(err, handler);
  }
}
