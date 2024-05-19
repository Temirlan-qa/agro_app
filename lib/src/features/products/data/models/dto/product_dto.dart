import 'package:agro_app/src/core/base/base_dto.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/features/profile/data/models/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto extends BaseDto with _$ProductDto {
  const factory ProductDto({
    required String id,
    required String title,
    required String description,
    @Default(ProductType.none) ProductType type,
    Category? category,
    @Default([]) List<String> photoLinks,
    @Default('') String videoLink,
    @Default('') String storageType,
    @Default('') String origin,
    @Default(0) int year,
    List<int>? created,
    @Default('') String phoneWhatsapp,
    @Default('') String linkTelegram,
    @Default('') String grade,
    @Default('') String humidity,
    @Default(0) double price,
    @Default('') String location,
    int? viewCount,
    int? favoriteCount,
    double? analysis,
    @Default(false) bool isFavorite,
    UserDto? user,
    ProductCategory? productCategory,
    ProductSubCategory? productSubCategory,
    AdditionalService? additionalService,
    Specialization? specialization,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
