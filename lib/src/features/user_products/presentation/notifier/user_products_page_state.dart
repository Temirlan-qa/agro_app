import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_products_page_state.freezed.dart';
part 'user_products_page_state.g.dart';

@freezed
class UserProductsPageState with _$UserProductsPageState {
  factory UserProductsPageState({
    @Default([]) List<ProductEntity> userProducts,
    @Default(false) bool isLoading,
  }) = _UserProductsPageState;

  factory UserProductsPageState.fromJson(Map<String, dynamic> json) =>
      _$UserProductsPageStateFromJson(json);
}
