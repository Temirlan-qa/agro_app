import '../../../../core/base/mapper_interfaces.dart';
import '../models/cities_dto.dart';

class CitiesResponseToDtoMapper
    implements IResponseToDtoMapper<CitiesDto, dynamic> {
  @override
  CitiesDto map(dynamic response) {
    return CitiesDto(
      code: response.code,
      name: response.name,
    );
  }
}
