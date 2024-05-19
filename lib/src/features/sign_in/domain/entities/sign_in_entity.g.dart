// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInEntityImpl _$$SignInEntityImplFromJson(Map<String, dynamic> json) =>
    _$SignInEntityImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$SignInEntityImplToJson(_$SignInEntityImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
