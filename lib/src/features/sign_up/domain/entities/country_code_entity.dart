import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_code_entity.freezed.dart';
part 'country_code_entity.g.dart';

@freezed
class CountryCodeEntity with _$CountryCodeEntity {
  factory CountryCodeEntity({
    required String countryName,
    required String countryCode,
  }) = _CountryCodeEntity;

  // factory CountryCodeEntity.empty() => CountryCodeEntity(
  //       countryName: '',
  //       countryCode: '',
  //     );

  factory CountryCodeEntity.fromJson(Map<String, dynamic> json) =>
      _$CountryCodeEntityFromJson(json);
}
