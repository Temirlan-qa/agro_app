import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/countries_repository_impl.dart';
import '../entities/cities_entity.dart';
import '../repository/i_countries_repository.dart';
import '../request_models/country_code_request_model.dart';

@lazySingleton
class GetCitiesByCountryUseCase
    extends UseCase<List<CitiesEntity>, CountryCodeRequestModel> {
  final ICountriesRepository _repository;
  GetCitiesByCountryUseCase(
      @Named.from(CountriesRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, List<CitiesEntity>>> execute(
    CountryCodeRequestModel requestModel,
  ) async =>
      _repository.getCitiesByCountry(requestModel);
}
