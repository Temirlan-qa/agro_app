// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePasswordRequestModelImpl _$$UpdatePasswordRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePasswordRequestModelImpl(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
      confirmNewPassword: json['confirmNewPassword'] as String,
    );

Map<String, dynamic> _$$UpdatePasswordRequestModelImplToJson(
        _$UpdatePasswordRequestModelImpl instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
      'confirmNewPassword': instance.confirmNewPassword,
    };
