import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exception/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/entities/sign_in_entity.dart';
import '../../domain/repository/i_sign_up_repository.dart';
import '../../domain/request_models/sign_in_request_model.dart';
import '../data_sources/remote/i_sign_up_remote.dart';
import '../data_sources/remote/sign_up_remote_impl.dart';
import '../mappers/sign_in_organization_dto_to_entity_mapper.dart';

@named
@LazySingleton(as: ISignInRepository)
class SignInRepositoryImpl implements ISignInRepository {
  final ISignInRemote _signInImpl;
  SignInRepositoryImpl(@Named.from(SignInRemoteImpl) this._signInImpl);

  @override
  Future<Either<DomainException, SignInEntity>> signIn(
      SignInRequestModel signInRequestModel) async {
    try {
      final requests = await _signInImpl.signIn(signInRequestModel);

      return requests.fold((error) => Left(error), (organizationDto) {
        SignInEntity result = SignInDtoMapper().map(organizationDto);

        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
