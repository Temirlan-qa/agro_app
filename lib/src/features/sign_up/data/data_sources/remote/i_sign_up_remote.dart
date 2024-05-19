import 'package:fpdart/fpdart.dart';

import '../../../../../core/exception/domain_exception.dart';
import '../../../domain/request_models/sign_up_request_model.dart';
import '../../models/country_code_dto.dart';
import '../../models/sign_up_dto.dart';

abstract class ISignUpRemote {
  Future<Either<DomainException, SignUpDto>> signUp(
    SignUpRequestModel signUpRequestModel,
  );

  Future<Either<DomainException, List<CountryCodeDto>>> countryCode();
}
