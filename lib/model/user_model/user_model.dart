import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    int? success,
    Data? data,
    @JsonKey(name: 'user_id') int? userId,
    String? role,
    String? message,
    dynamic error,
    String? username,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
