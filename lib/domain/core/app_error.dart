import 'package:freezed_annotation/freezed_annotation.dart';
import 'types.dart';

part 'app_error.freezed.dart';

part 'app_error.g.dart';

@freezed
class AppError with _$AppError {
  const factory AppError({
    required String errorMsg,
    required ErrorType errorType,
  }) = _AppError;

  const AppError._();

  factory AppError.fromJson(Json json) => _$AppErrorFromJson(json);
}

enum ErrorType {
  NotFound,
  // some errors codes
}
