import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/features/profile/domain/entities/user_entity.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/log_out_entity.dart';
import '../request_models/log_out_request_model.dart';
import '../request_models/update_password_request_model.dart';
import '../request_models/update_user_info_request_model.dart';

abstract class IProfileRepository {
  Future<Either<DomainException, UserEntity>> getUserInfo();
  // Future<Either<DomainException, String>> resetPassword();
  Future<Either<DomainException, String>> updatePassword(
    UpdatePasswordRequestModel updatePasswordRequestModel,
  );
  Future<Either<DomainException, LogOutEntity>> logOut(
      LogOutRequestModel logOutRequestModel);
  Future<Either<DomainException, UserEntity>> updateUserInfo(
      UpdateUserInfoRequestModel updateUserInfoRequestModel);
}
