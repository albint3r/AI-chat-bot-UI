import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/types.dart';


part 'app_user.freezed.dart';

part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    @JsonKey(name: 'creation_date') required DateTime creationDate,
    required String name,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'is_verify') required bool isVerify,
  }) = _AppUser;

  const AppUser._();

  factory AppUser.fromJson(Json json) => _$AppUserFromJson(json);

}
