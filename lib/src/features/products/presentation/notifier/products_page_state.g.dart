// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsPageStateImpl _$$ProductsPageStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductsPageStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedCategory:
          $enumDecodeNullable(_$CategoryEnumMap, json['selectedCategory']) ??
              Category.none,
      faqs: (json['faqs'] as List<dynamic>?)
              ?.map((e) => FaqEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedProductCategory: $enumDecodeNullable(
              _$ProductCategoryEnumMap, json['selectedProductCategory']) ??
          ProductCategory.none,
    );

Map<String, dynamic> _$$ProductsPageStateImplToJson(
        _$ProductsPageStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'products': instance.products,
      'selectedCategory': _$CategoryEnumMap[instance.selectedCategory]!,
      'faqs': instance.faqs,
      'selectedProductCategory':
          _$ProductCategoryEnumMap[instance.selectedProductCategory]!,
    };

const _$CategoryEnumMap = {
  Category.product: 'PRODUCT',
  Category.job: 'JOB',
  Category.service: 'SERVICE',
  Category.faq: 'faq',
  Category.none: 'none',
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
