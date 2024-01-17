import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_intercept_to_curl/dio_intercept_to_curl.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../auth/auth_interceptors.dart';
import 'shared_pref.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @injectable
  BaseOptions getDioBaseOptions(
    SharedPref sharedPref,
  ) {
    final sessionToken = sharedPref.getToken();
    final headers = {
      HttpHeaders.acceptHeader: Headers.jsonContentType,
      HttpHeaders.authorizationHeader: sessionToken,
    };
    return BaseOptions(
      baseUrl: 'http://192.168.1.71:8000',
      headers: headers,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    );
  }

  @injectable
  Iterable<Interceptor> getInterceptors() {
    if (kDebugMode) {
      return [
        LogInterceptor(logPrint: l.d),
        DioInterceptToCurl(),
      ];
    }
    return [];
  }

  @singleton
  Dio getDio(
    BaseOptions options,
    Iterable<Interceptor> interceptors,
    AuthInterceptors auth,
  ) {
    final dio = Dio(options);
    dio.interceptors
      ..addAll(interceptors)
      ..add(auth);
    return dio;
  }

  @singleton
  Uri getUriWebSocket() {
    return Uri(
      scheme: 'ws',
      host: '192.168.1.71',
      path: '/chatbot/v1/ws/qa-chatbot',
      port: 8000,
    );
  }
}
