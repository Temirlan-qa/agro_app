import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/sign_up_repository_impl.dart';
import '../entities/sign_in_entity.dart';
import '../repository/i_sign_up_repository.dart';
import '../request_models/sign_in_request_model.dart';

@lazySingleton
class OrganizationSignInUseCase
    extends UseCase<SignInEntity, SignInRequestModel> {
  final ISignInRepository _signInRepository;

  OrganizationSignInUseCase(
      @Named.from(SignInRepositoryImpl) this._signInRepository);

  @override
  Future<Either<DomainException, SignInEntity>> execute(
          SignInRequestModel requestModel) async =>
      _signInRepository.signIn(requestModel);
}
