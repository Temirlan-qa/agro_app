import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/features/create_product/presentation/widgets/create_product_fields_enum.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';

part 'create_product_state.freezed.dart';
part 'create_product_state.g.dart';

@freezed
class CreateProductState with _$CreateProductState {
  factory CreateProductState({
    @Default(false) bool isLoading,
    required ProductEntity product,
    @Default([]) List<String> imageUrls,
    @Default(false) bool fileUploading,
    @Default(0) int currentImageIndex,
    @Default([]) List<CreateProductErrorFields> errorFields,
    @Default(false) bool saveProduct,
    required ProductEntity initProduct,
    @Default(false) bool isSaveBtnPressed,
    @Default([]) List<ProductSubCategory> productSubCategories,
  }) = _CreateProductState;

  factory CreateProductState.fromJson(Map<String, dynamic> json) =>
      _$CreateProductStateFromJson(json);
}
