import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:agro_app/src/features/profile/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  factory ProductEntity({
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
    required String created,
    @Default('') String phoneWhatsapp,
    @Default('') String linkTelegram,
    @Default('') String grade,
    @Default('') String humidity,
    @Default(0) double price,
    @Default('') String location,
    String? country,
    int? viewCount,
    int? favoriteCount,
    double? analysis,
    @Default(false) bool isFavorite,
    UserEntity? user,
    @Default(false) bool isOwnProduct,
    ProductCategory? productCategory,
    ProductSubCategory? productSubCategory,
    AdditionalService? additionalService,
    Specialization? specialization,
  }) = _ProductEntity;

  factory ProductEntity.empty() => ProductEntity(
        id: '',
        title: '',
        type: ProductType.buy,
        photoLinks: [],
        description: '',
        price: 0,
        location: '',
        created: '',
        country: '',
        additionalService: AdditionalService.none,
        origin: '',
        category: Category.job,
        humidity: '',
        year: 2023,
      );

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
