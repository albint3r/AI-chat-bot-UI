import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/types.dart';

@module
abstract class RegisterModule {
  Dio getDio() {
    final Json headers = {
      'Content-Type': 'application/json',
    };
    final options = BaseOptions(
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      baseUrl: 'http://192.168.1.71:8000',
      headers: headers,
    );
    return Dio(options);
  }
}
