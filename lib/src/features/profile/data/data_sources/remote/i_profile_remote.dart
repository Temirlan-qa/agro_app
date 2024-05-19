import 'package:agro_app/src/features/profile/data/models/user_dto.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../../core/exception/domain_exception.dart';
import '../../../domain/request_models/log_out_request_model.dart';
import '../../../domain/request_models/update_password_request_model.dart';
import '../../../domain/request_models/update_user_info_request_model.dart';
import '../../models/log_out_dto.dart';

abstract class IProfileRemote {
  Future<Either<DomainException, UserDto>> getUserInfo();
  Future<Either<DomainException, LogOutDto>> logOut(
    LogOutRequestModel logOutRequestModel,
  );
  Future<Either<DomainException, UserDto>> updateUserInfo(
    UpdateUserInfoRequestModel updateUserInfoRequestModel,
  );
  // Future<Either<DomainException, String>> resetPassword();
  Future<Either<DomainException, String>> updatePassword(
    UpdatePasswordRequestModel updatePasswordRequestModel,
  );
}
