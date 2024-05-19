import '../../domain/entities/country_code_entity.dart';
import '../models/country_code_dto.dart';

class CountryCodeDtoMapper {
  CountryCodeEntity map(CountryCodeDto dto) {
    return CountryCodeEntity(
      countryName: dto.countryName,
      countryCode: dto.countryCode,
    );
  }
}
