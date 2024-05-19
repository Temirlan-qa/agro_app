import '../../domain/entities/sign_up_entity.dart';
import '../models/sign_up_dto.dart';

class SignUpDtoMapper {
  SignUpEntity map(SignUpDto dto) {
    return SignUpEntity(
      description: dto.description,
    );
  }
}
