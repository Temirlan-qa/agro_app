// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_info_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserInfoRequestModelImpl _$$UpdateUserInfoRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserInfoRequestModelImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      fio: json['fio'] as String?,
      socLink: json['socLink'] as String?,
      contactPhone: json['contactPhone'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      bin: json['bin'] as String?,
      photoLink: json['photoLink'] as String?,
    );

Map<String, dynamic> _$$UpdateUserInfoRequestModelImplToJson(
        _$UpdateUserInfoRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'fio': instance.fio,
      'socLink': instance.socLink,
      'contactPhone': instance.contactPhone,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'bin': instance.bin,
      'photoLink': instance.photoLink,
    };
