import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';

part 'product_page_state.freezed.dart';

@freezed
class ProductPageState with _$ProductPageState {
  factory ProductPageState({
    required ProductEntity product,
  }) = _ProductPageState;
}
