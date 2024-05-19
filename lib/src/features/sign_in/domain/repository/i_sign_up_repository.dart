import 'package:fpdart/fpdart.dart';
import 'package:agro_app/src/core/exception/domain_exception.dart';

import '../entities/sign_in_entity.dart';
import '../request_models/sign_in_request_model.dart';

abstract class ISignInRepository {
  Future<Either<DomainException, SignInEntity>> signIn(
      SignInRequestModel signInRequestModel);
}
