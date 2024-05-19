// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInDtoImpl _$$SignInDtoImplFromJson(Map<String, dynamic> json) =>
    _$SignInDtoImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$SignInDtoImplToJson(_$SignInDtoImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
