import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_data.dart';
import 'data.dart';

part 'user_profile_moel.freezed.dart';
part 'user_profile_moel.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  factory UserProfileModel({
    @JsonKey(name: 'StatusCode') int? statusCode,
    DataModel? data,
    @JsonKey(name: 'customer_data') CustomerData? customerData,
  }) = _UserProfileMoel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
