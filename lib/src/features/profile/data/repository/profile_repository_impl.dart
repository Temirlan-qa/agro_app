import 'package:agro_app/src/features/profile/data/mappers/user_dto_to_entity_mapper.dart';
import 'package:agro_app/src/features/profile/domain/entities/user_entity.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exception/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/entities/log_out_entity.dart';
import '../../domain/repository/i_profile_repository.dart';
import '../../domain/request_models/log_out_request_model.dart';
import '../../domain/request_models/update_password_request_model.dart';
import '../../domain/request_models/update_user_info_request_model.dart';
import '../data_sources/remote/i_profile_remote.dart';
import '../data_sources/remote/profile_remote_impl.dart';
import '../mappers/log_out_dto_to_entity_mapper.dart';

@named
@LazySingleton(as: IProfileRepository)
class ProfileRepositoryImpl implements IProfileRepository {
  final IProfileRemote _profileImpl;
  ProfileRepositoryImpl(@Named.from(ProfileRemoteImpl) this._profileImpl);

  @override
  Future<Either<DomainException, UserEntity>> getUserInfo() async {
    try {
      final requests = await _profileImpl.getUserInfo();

      return requests.fold((error) => Left(error), (userDto) {
        final result = UserDtoMapper().map(userDto);
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  // @override
  // Future<Either<DomainException, String>> resetPassword() async {
  //   try {
  //     final requests = await _profileImpl.resetPassword();

  //     return requests.fold((error) => Left(error), (userDto) {
  //       return Right(userDto);
  //     });
  //   } catch (e) {
  //     Log.e(e);
  //     return Left(UnknownException(message: e.toString()));
  //   }
  // }

  @override
  Future<Either<DomainException, String>> updatePassword(
    UpdatePasswordRequestModel updatePasswordRequestModel,
  ) async {
    try {
      final requests =
          await _profileImpl.updatePassword(updatePasswordRequestModel);
      return requests.fold((error) => Left(error), (dto) {
        return Right(dto);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, LogOutEntity>> logOut(
      LogOutRequestModel logOutRequestModel) async {
    try {
      final requests = await _profileImpl.logOut(logOutRequestModel);

      return requests.fold((error) => Left(error), (individualDto) {
        LogOutEntity result = LogOutDtoMapper().map(individualDto);

        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, UserEntity>> updateUserInfo(
      UpdateUserInfoRequestModel updateUserInfoRequestModel) async {
    try {
      final requests =
          await _profileImpl.updateUserInfo(updateUserInfoRequestModel);

      return requests.fold((error) => Left(error), (userDto) {
        final result = UserDtoMapper().map(userDto);
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
