// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountriesStateImpl _$$CountriesStateImplFromJson(Map<String, dynamic> json) =>
    _$CountriesStateImpl(
      countriesList: (json['countriesList'] as List<dynamic>?)
          ?.map((e) => CountriesEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      citiesList: (json['citiesList'] as List<dynamic>?)
          ?.map((e) => CitiesEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountriesStateImplToJson(
        _$CountriesStateImpl instance) =>
    <String, dynamic>{
      'countriesList': instance.countriesList,
      'citiesList': instance.citiesList,
    };
