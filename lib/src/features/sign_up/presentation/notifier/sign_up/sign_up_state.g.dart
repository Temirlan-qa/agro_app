// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpStateImpl _$$SignUpStateImplFromJson(Map<String, dynamic> json) =>
    _$SignUpStateImpl(
      isBtnPressed: json['isBtnPressed'] as bool? ?? false,
      countryCodeList: (json['countryCodeList'] as List<dynamic>?)
              ?.map(
                  (e) => CountryCodeEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SignUpStateImplToJson(_$SignUpStateImpl instance) =>
    <String, dynamic>{
      'isBtnPressed': instance.isBtnPressed,
      'countryCodeList': instance.countryCodeList,
    };
