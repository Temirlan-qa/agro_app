import 'package:fpdart/fpdart.dart';

import '../../../../../core/exception/domain_exception.dart';
import '../../../domain/request_models/sign_in_request_model.dart';
import '../../models/sign_in_dto.dart';

abstract class ISignInRemote {
  Future<Either<DomainException, SignInDto>> signIn(
    SignInRequestModel signInRequestModel,
  );
}
