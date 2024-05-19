// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_products_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProductsPageStateImpl _$$UserProductsPageStateImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProductsPageStateImpl(
      userProducts: (json['userProducts'] as List<dynamic>?)
              ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserProductsPageStateImplToJson(
        _$UserProductsPageStateImpl instance) =>
    <String, dynamic>{
      'userProducts': instance.userProducts,
      'isLoading': instance.isLoading,
    };
