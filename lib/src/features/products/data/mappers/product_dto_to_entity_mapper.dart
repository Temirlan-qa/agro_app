import 'package:agro_app/src/core/utils/helpers/date_time_helper.dart';
import 'package:agro_app/src/features/products/data/models/dto/product_dto.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:agro_app/src/features/profile/data/models/user_dto.dart';
import 'package:agro_app/src/features/profile/domain/entities/user_entity.dart';

class ProductDtoMapper {
  ProductEntity map(ProductDto dto) {
    return ProductEntity(
      id: dto.id,
      title: dto.title,
      type: dto.type,
      photoLinks: dto.photoLinks,
      description: dto.description,
      price: dto.price,
      year: dto.year,
      created: dto.created != null
          ? DateTimeHelper.convertListIntToDateTime(
              dto.created!,
            )
          : '',
      location: dto.location,
      category: dto.category,
      origin: dto.origin,
      humidity: dto.humidity,
      isFavorite: dto.isFavorite,
      storageType: dto.storageType,
      grade: dto.grade,
      phoneWhatsapp: dto.phoneWhatsapp,
      linkTelegram: dto.linkTelegram,
      analysis: dto.analysis,
      viewCount: dto.viewCount,
      favoriteCount: dto.favoriteCount,
      user: dto.user != null ? _mapUser(dto.user!) : null,
      productCategory: dto.productCategory,
      productSubCategory: dto.productSubCategory,
      additionalService: dto.additionalService,
      specialization: dto.specialization,
    );
  }

  UserEntity _mapUser(UserDto dto) {
    return UserEntity(
      id: dto.id,
      roleType: dto.roleType ?? '',
      username: dto.username,
      email: dto.email,
      fio: dto.fio,
      socLink: dto.socLink,
      contactPhone: dto.contactPhone,
      address: dto.address,
      city: dto.city,
      country: dto.country,
      bin: dto.bin,
      isBlocked: dto.isBlocked,
      activationCodes: dto.activationCodes,
    );
  }
}
