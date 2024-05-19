import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';

part 'favorites_page_state.freezed.dart';

@freezed
class FavoritesPageState with _$FavoritesPageState {
  factory FavoritesPageState({
    @Default([]) List<ProductEntity> favoriteProducts,
    @Default(false) bool isLoading,
  }) = _FavoritesPageState;
}
