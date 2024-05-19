// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_sub_category_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProductSubCategoryRequestModelImpl
    _$$GetProductSubCategoryRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetProductSubCategoryRequestModelImpl(
          productCategory:
              $enumDecode(_$ProductCategoryEnumMap, json['productCategory']),
        );

Map<String, dynamic> _$$GetProductSubCategoryRequestModelImplToJson(
        _$GetProductSubCategoryRequestModelImpl instance) =>
    <String, dynamic>{
      'productCategory': _$ProductCategoryEnumMap[instance.productCategory]!,
    };

const _$ProductCategoryEnumMap = {
  ProductCategory.GRAINS: 'GRAINS',
  ProductCategory.LEGUMES: 'LEGUMES',
  ProductCategory.FEED: 'FEED',
  ProductCategory.OIL_SEEDS: 'OIL_SEEDS',
  ProductCategory.ESSENTIAL_OILS: 'ESSENTIAL_OILS',
  ProductCategory.TECHNICAL_WASTE: 'TECHNICAL_WASTE',
  ProductCategory.VEGETABLES: 'VEGETABLES',
  ProductCategory.MEDICINAL: 'MEDICINAL',
  ProductCategory.FLOWERS: 'FLOWERS',
  ProductCategory.FRUITS: 'FRUITS',
  ProductCategory.BERRIES: 'BERRIES',
  ProductCategory.SUGAR_BEET: 'SUGAR_BEET',
  ProductCategory.none: 'none',
};
