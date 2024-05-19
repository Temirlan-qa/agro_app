import 'package:fpdart/fpdart.dart';

import '../../../../../core/exception/domain_exception.dart';
import '../../../domain/request_models/country_code_request_model.dart';
import '../../models/cities_dto.dart';
import '../../models/countries_dto.dart';

abstract class ICountriesRemote {
  Future<Either<DomainException, List<CountriesDto>>> getAllCountries();
  Future<Either<DomainException, List<CitiesDto>>> getCitiesByCountry(
      CountryCodeRequestModel requestModel);
}
