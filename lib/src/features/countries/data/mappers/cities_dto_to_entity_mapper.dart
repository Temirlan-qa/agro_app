import '../../domain/entities/cities_entity.dart';
import '../models/cities_dto.dart';

class CitiesDtoMapper {
  CitiesEntity map(CitiesDto dto) {
    return CitiesEntity(
      code: dto.code,
      name: dto.name,
    );
  }
}
