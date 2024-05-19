import '../../domain/entities/log_out_entity.dart';
import '../models/log_out_dto.dart';

class LogOutDtoMapper {
  LogOutEntity map(LogOutDto dto) {
    return LogOutEntity(
      description: dto.description,
    );
  }
}
