import 'package:fpdart/fpdart.dart';

import '../../../../core/exception/domain_exception.dart';
import '../entities/cities_entity.dart';
import '../entities/countries_entity.dart';
import '../request_models/country_code_request_model.dart';

abstract class ICountriesRepository {
  Future<Either<DomainException, List<CountriesEntity>>> getAllCountries();
  Future<Either<DomainException, List<CitiesEntity>>> getCitiesByCountry(
      CountryCodeRequestModel requestModel);
}
