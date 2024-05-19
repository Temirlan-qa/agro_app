import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exception/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/entities/country_code_entity.dart';
import '../../domain/entities/sign_up_entity.dart';
import '../../domain/repository/i_sign_up_repository.dart';
import '../../domain/request_models/sign_up_request_model.dart';
import '../data_sources/remote/i_sign_up_remote.dart';
import '../data_sources/remote/sign_up_remote_impl.dart';
import '../mappers/country_code_dto_to_entity_mapper.dart';
import '../mappers/sign_up_dto_to_entity_mapper.dart';

@named
@LazySingleton(as: ISignUpRepository)
class SignUpRepositoryImpl implements ISignUpRepository {
  final ISignUpRemote _signUpImpl;
  SignUpRepositoryImpl(@Named.from(SignUpRemoteImpl) this._signUpImpl);

  @override
  Future<Either<DomainException, SignUpEntity>> signUp(
      SignUpRequestModel signUpRequestModel) async {
    try {
      final requests = await _signUpImpl.signUp(signUpRequestModel);

      return requests.fold((error) => Left(error), (signUpDto) {
        SignUpEntity result = SignUpDtoMapper().map(signUpDto);
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, List<CountryCodeEntity>>> countryCode() async {
    try {
      final requests = await _signUpImpl.countryCode();
      return requests.fold((error) => Left(error), (countryDto) {
        List<CountryCodeEntity> result = [];
        for (var dto in countryDto) {
          final countryEntity = CountryCodeDtoMapper().map(dto);
          result.add(countryEntity);
        }
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
