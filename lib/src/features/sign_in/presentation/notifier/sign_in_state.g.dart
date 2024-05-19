// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInStateImpl _$$SignInStateImplFromJson(Map<String, dynamic> json) =>
    _$SignInStateImpl(
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
      isBtnPressed: json['isBtnPressed'] as bool? ?? false,
    );

Map<String, dynamic> _$$SignInStateImplToJson(_$SignInStateImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'isBtnPressed': instance.isBtnPressed,
    };
