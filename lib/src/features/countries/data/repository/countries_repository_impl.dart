import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exception/domain_exception.dart';
import '../../domain/entities/cities_entity.dart';
import '../../domain/entities/countries_entity.dart';
import '../../domain/repository/i_countries_repository.dart';
import '../../domain/request_models/country_code_request_model.dart';
import '../data_sources/remote/countries_remote_impl.dart';
import '../data_sources/remote/i_countries_remote.dart';
import '../mappers/cities_dto_to_entity_mapper.dart';
import '../mappers/countries_dto_to_entity_mapper.dart';

@named
@LazySingleton(as: ICountriesRepository)
class CountriesRepositoryImpl implements ICountriesRepository {
  final ICountriesRemote _countriesImpl;
  CountriesRepositoryImpl(@Named.from(CountriesRemoteImpl) this._countriesImpl);

  @override
  Future<Either<DomainException, List<CountriesEntity>>>
      getAllCountries() async {
    try {
      final requests = await _countriesImpl.getAllCountries();
      return requests.fold((error) => Left(error), (dtos) {
        final entities = dtos.map((e) => CountriesDtoMapper().map(e)).toList();

        return Right(entities);
      });
    } catch (e) {
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, List<CitiesEntity>>> getCitiesByCountry(
    CountryCodeRequestModel requestModel,
  ) async {
    try {
      final requests = await _countriesImpl.getCitiesByCountry(requestModel);
      return requests.fold((error) => Left(error), (dtos) {
        final entities = dtos.map((e) => CitiesDtoMapper().map(e)).toList();

        return Right(entities);
      });
    } catch (e) {
      return Left(UnknownException(message: e.toString()));
    }
  }
}
