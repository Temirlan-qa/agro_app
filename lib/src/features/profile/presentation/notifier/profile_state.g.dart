// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileStateImpl _$$ProfileStateImplFromJson(Map<String, dynamic> json) =>
    _$ProfileStateImpl(
      isBtnPressed: json['isBtnPressed'] as bool? ?? false,
      userInfo: json['userInfo'] == null
          ? null
          : UserEntity.fromJson(json['userInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileStateImplToJson(_$ProfileStateImpl instance) =>
    <String, dynamic>{
      'isBtnPressed': instance.isBtnPressed,
      'userInfo': instance.userInfo,
    };
