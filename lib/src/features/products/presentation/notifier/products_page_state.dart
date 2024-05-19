import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/features/products/domain/entities/faq_entity.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_page_state.freezed.dart';
part 'products_page_state.g.dart';

@freezed
class ProductsPageState with _$ProductsPageState {
  factory ProductsPageState({
    @Default(false) bool isLoading,
    @Default([]) List<ProductEntity> products,
    @Default(Category.none) Category selectedCategory,
    @Default([]) List<FaqEntity> faqs,
    @Default(ProductCategory.none) ProductCategory selectedProductCategory,
  }) = _ProductsPageState;

  factory ProductsPageState.fromJson(Map<String, dynamic> json) =>
      _$ProductsPageStateFromJson(json);
}
