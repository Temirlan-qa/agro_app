import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/sign_up_repository_impl.dart';
import '../entities/country_code_entity.dart';
import '../repository/i_sign_up_repository.dart';

@lazySingleton
class CountryCodeUseCase
    extends NoneInputBoundaryUseCase<List<CountryCodeEntity>> {
  final ISignUpRepository _signUpRepository;

  CountryCodeUseCase(@Named.from(SignUpRepositoryImpl) this._signUpRepository);

  @override
  Future<Either<DomainException, List<CountryCodeEntity>>> execute() async =>
      _signUpRepository.countryCode();
}
