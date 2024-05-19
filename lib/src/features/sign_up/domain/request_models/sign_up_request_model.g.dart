// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestModelImpl _$$SignUpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestModelImpl(
      email: json['email'] as String,
      bin: json['bin'] as String?,
      roleType: json['roleType'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      fio: json['fio'] as String,
      socLink: json['socLink'] as String,
      contactPhone: json['contactPhone'] as String,
      address: json['address'] as String?,
      city: json['city'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$SignUpRequestModelImplToJson(
        _$SignUpRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'bin': instance.bin,
      'roleType': instance.roleType,
      'username': instance.username,
      'password': instance.password,
      'fio': instance.fio,
      'socLink': instance.socLink,
      'contactPhone': instance.contactPhone,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
    };
