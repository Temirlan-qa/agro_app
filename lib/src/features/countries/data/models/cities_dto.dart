import 'package:agro_app/src/core/base/base_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_dto.freezed.dart';
part 'cities_dto.g.dart';

@freezed
class CitiesDto extends BaseDto with _$CitiesDto {
  factory CitiesDto({
    required String code,
    required String name,
  }) = _CitiesDto;

  factory CitiesDto.fromJson(Map<String, dynamic> json) =>
      _$CitiesDtoFromJson(json);
}
