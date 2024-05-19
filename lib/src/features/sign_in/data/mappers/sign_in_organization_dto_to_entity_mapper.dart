import '../../domain/entities/sign_in_entity.dart';
import '../models/sign_in_dto.dart';

class SignInDtoMapper {
  SignInEntity map(SignInDto dto) {
    return SignInEntity(
      accessToken: dto.accessToken,
      refreshToken: dto.refreshToken,
    );
  }
}
