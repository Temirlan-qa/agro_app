// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_out_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogOutRequestModelImpl _$$LogOutRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LogOutRequestModelImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$LogOutRequestModelImplToJson(
        _$LogOutRequestModelImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
