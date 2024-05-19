// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      roleType: json['roleType'] as String?,
      fio: json['fio'] as String?,
      socLink: json['socLink'] as String?,
      contactPhone: json['contactPhone'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      photoLink: json['photoLink'] as String?,
      bin: json['bin'] as String?,
      isBlocked: json['isBlocked'] as bool? ?? false,
      activationCodes: json['activationCodes'] as String?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'roleType': instance.roleType,
      'fio': instance.fio,
      'socLink': instance.socLink,
      'contactPhone': instance.contactPhone,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'photoLink': instance.photoLink,
      'bin': instance.bin,
      'isBlocked': instance.isBlocked,
      'activationCodes': instance.activationCodes,
    };
