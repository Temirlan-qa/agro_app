import 'package:agro_app/src/features/sign_up/domain/entities/sign_up_entity.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exception/domain_exception.dart';
import '../../data/repository/sign_up_repository_impl.dart';
import '../repository/i_sign_up_repository.dart';
import '../request_models/sign_up_request_model.dart';

@lazySingleton
class SignUpUseCase extends UseCase<SignUpEntity, SignUpRequestModel> {
  final ISignUpRepository _signUpRepository;

  SignUpUseCase(@Named.from(SignUpRepositoryImpl) this._signUpRepository);

  @override
  Future<Either<DomainException, SignUpEntity>> execute(
          SignUpRequestModel requestModel) async =>
      _signUpRepository.signUp(requestModel);
}
