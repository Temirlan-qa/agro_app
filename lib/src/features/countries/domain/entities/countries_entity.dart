import 'package:agro_app/src/core/base/base_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_entity.freezed.dart';
part 'countries_entity.g.dart';

@freezed
class CountriesEntity extends BaseEntity with _$CountriesEntity {
  factory CountriesEntity({
    required String code,
    required String name,
  }) = _CountriesEntity;

  factory CountriesEntity.fromJson(Map<String, dynamic> json) =>
      _$CountriesEntityFromJson(json);
}
