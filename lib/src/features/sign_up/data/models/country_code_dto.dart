import 'package:agro_app/src/core/base/base_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_code_dto.freezed.dart';
part 'country_code_dto.g.dart';

@freezed
class CountryCodeDto extends BaseDto with _$CountryCodeDto {
  const factory CountryCodeDto({
    required String countryName,
    required String countryCode,
  }) = _CountryCodeDto;

  factory CountryCodeDto.fromJson(Map<String, dynamic> json) =>
      _$CountryCodeDtoFromJson(json);
}
