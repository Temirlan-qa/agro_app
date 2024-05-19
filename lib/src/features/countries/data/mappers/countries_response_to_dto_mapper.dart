import '../../../../core/base/mapper_interfaces.dart';
import '../models/countries_dto.dart';

class CountriesResponseToDtoMapper
    implements IResponseToDtoMapper<CountriesDto, dynamic> {
  @override
  CountriesDto map(dynamic response) {
    return CountriesDto(
      code: response.code,
      name: response.name,
    );
  }
}
