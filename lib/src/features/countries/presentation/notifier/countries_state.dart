import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cities_entity.dart';
import '../../domain/entities/countries_entity.dart';

part 'countries_state.freezed.dart';
part 'countries_state.g.dart';

@freezed
class CountriesState with _$CountriesState {
  factory CountriesState({
    List<CountriesEntity>? countriesList,
    List<CitiesEntity>? citiesList,
  }) = _CountriesState;

  factory CountriesState.fromJson(Map<String, dynamic> json) =>
      _$CountriesStateFromJson(json);
}
