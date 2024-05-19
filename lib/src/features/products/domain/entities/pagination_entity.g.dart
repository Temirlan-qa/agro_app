// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationEntityImpl _$$PaginationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationEntityImpl(
      totalSum: json['totalSum'] as int?,
      local: json['local'] as bool? ?? false,
      page: json['page'] as int,
      size: json['size'] as int,
      hasNext: json['hasNext'] as bool,
      totalPage: json['totalPage'] as int,
      totalElementsOnPage: json['totalElementsOnPage'] as int,
      elementsSize: json['elementsSize'] as int,
      data: json['data'] as List<dynamic>,
    );

Map<String, dynamic> _$$PaginationEntityImplToJson(
        _$PaginationEntityImpl instance) =>
    <String, dynamic>{
      'totalSum': instance.totalSum,
      'local': instance.local,
      'page': instance.page,
      'size': instance.size,
      'hasNext': instance.hasNext,
      'totalPage': instance.totalPage,
      'totalElementsOnPage': instance.totalElementsOnPage,
      'elementsSize': instance.elementsSize,
      'data': instance.data,
    };
