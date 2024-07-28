import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    String? refresh,
    String? access,
    @JsonKey(name: 'user_id') int? userId,
    String? role,
    String? username,
    String? email,
    @JsonKey(name: 'last_login') String? lastLogin,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
