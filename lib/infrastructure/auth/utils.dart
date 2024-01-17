import 'dart:io';

import 'package:dio/dio.dart';

class FastHeader {
  static Options getOptions(String sessionToken) {
    final headers = {
      HttpHeaders.acceptHeader: Headers.jsonContentType,
      HttpHeaders.authorizationHeader: sessionToken,
    };
    return Options(headers: headers);
  }
}
