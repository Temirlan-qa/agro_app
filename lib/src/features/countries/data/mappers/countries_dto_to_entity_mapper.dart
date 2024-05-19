import '../../domain/entities/countries_entity.dart';
import '../models/countries_dto.dart';

class CountriesDtoMapper {
  CountriesEntity map(CountriesDto dto) {
    return CountriesEntity(
      code: dto.code,
      name: dto.name,
    );
  }
}
