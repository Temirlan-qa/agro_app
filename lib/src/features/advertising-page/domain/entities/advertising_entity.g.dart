// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertising_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvertisingEntityImpl _$$AdvertisingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisingEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      selected: json['selected'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AdvertisingEntityImplToJson(
        _$AdvertisingEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'selected': instance.selected,
      'runtimeType': instance.$type,
    };

_$AdvertisingEntityEmptyImpl _$$AdvertisingEntityEmptyImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisingEntityEmptyImpl(
      id: json['id'] ?? '',
      title: json['title'] as String? ?? '5',
      description: json['description'] as String? ?? '5',
      price: json['price'] as String? ?? '6900',
      selected: json['selected'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AdvertisingEntityEmptyImplToJson(
        _$AdvertisingEntityEmptyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'selected': instance.selected,
      'runtimeType': instance.$type,
    };
