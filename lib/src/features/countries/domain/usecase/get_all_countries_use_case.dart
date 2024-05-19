import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/countries_repository_impl.dart';
import '../entities/countries_entity.dart';
import '../repository/i_countries_repository.dart';

@lazySingleton
class GetAllCountriesUseCase
    extends NoneInputBoundaryUseCase<List<CountriesEntity>> {
  final ICountriesRepository _repository;
  GetAllCountriesUseCase(@Named.from(CountriesRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, List<CountriesEntity>>> execute() async =>
      _repository.getAllCountries();
}
