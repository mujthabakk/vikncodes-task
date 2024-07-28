import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';

part 'user_details.freezed.dart';
part 'user_details.g.dart';

@freezed
class UserDetails with _$UserDetails {
  factory UserDetails({
    @JsonKey(name: 'StatusCode') int? statusCode,
    List<Datum>? data,
    @JsonKey(name: 'total_count') int? totalCount,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}
