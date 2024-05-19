import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';

part 'category_boxes_state.freezed.dart';
part 'category_boxes_state.g.dart';

@freezed
class CategoryBoxesState with _$CategoryBoxesState {
  factory CategoryBoxesState({
    @Default(false) bool isLoading,
    @Default([]) List<ProductEntity> products,
    @Default([]) List<String> categories,
    Category? category,
    Specialization? specialization,
    ProductCategory? productCategory,
    ProductSubCategory? productSubCategory,
    AdditionalService? additionalService,
    @Default('') String barTitle,
  }) = _CategoryBoxesState;

  factory CategoryBoxesState.fromJson(Map<String, dynamic> json) =>
      _$CategoryBoxesStateFromJson(json);
}
