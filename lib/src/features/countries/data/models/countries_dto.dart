import 'package:agro_app/src/core/base/base_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_dto.freezed.dart';
part 'countries_dto.g.dart';

@freezed
class CountriesDto extends BaseDto with _$CountriesDto {
  factory CountriesDto({
    required String code,
    required String name,
  }) = _CountriesDto;

  factory CountriesDto.fromJson(Map<String, dynamic> json) =>
      _$CountriesDtoFromJson(json);
}
