import 'package:agro_app/src/features/profile/data/models/user_dto.dart';
import 'package:agro_app/src/features/profile/domain/entities/user_entity.dart';

class UserDtoMapper {
  UserEntity map(UserDto dto) {
    return UserEntity(
      id: dto.id,
      username: dto.username,
      email: dto.email,
      roleType: dto.roleType ?? '',
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
