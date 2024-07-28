import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_data.freezed.dart';
part 'customer_data.g.dart';

@freezed
class CustomerData with _$CustomerData {
  factory CustomerData({
    @JsonKey(name: 'DateOfBirth') String? dateOfBirth,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Phone') int? phone,
    @JsonKey(name: 'State') String? state,
    @JsonKey(name: 'City') dynamic city,
    @JsonKey(name: 'Address') dynamic address,
    String? photo,
    @JsonKey(name: 'CountryName') String? countryName,
    @JsonKey(name: 'StateName') String? stateName,
  }) = _CustomerData;

  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);
}
