import 'package:agro_app/src/features/profile/data/data_sources/remote/i_profile_remote.dart';
import 'package:agro_app/src/features/profile/data/models/user_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/rest/dio_client.dart';
import '../../../../../core/api/client/rest/endpoints.dart';
import '../../../../../core/exception/domain_exception.dart';
import '../../../domain/request_models/log_out_request_model.dart';
import '../../../domain/request_models/update_password_request_model.dart';
import '../../../domain/request_models/update_user_info_request_model.dart';
import '../../models/log_out_dto.dart';

@named
@LazySingleton(as: IProfileRemote)
class ProfileRemoteImpl implements IProfileRemote {
  final DioRestClient _dioRestClient;
  ProfileRemoteImpl(this._dioRestClient);

  @override
  Future<Either<DomainException, UserDto>> getUserInfo() async {
    try {
      final response = await _dioRestClient.get(
        EndPoints.getUserInfo,
      );
      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              UserDto.fromJson(result.data),
            );
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  // @override
  // Future<Either<DomainException, String>> resetPassword() async {
  //   try {
  //     final response = await _dioRestClient.post(
  //       EndPoints.resetUserPassword,
  //     );
  //     return response.fold(
  //       (error) => Left(error),
  //       (result) {
  //         if (result.statusCode == 200) {
  //           return Right(
  //             result.data,
  //           );
  //         }
  //         return Left(UnknownException());
  //       },
  //     );
  //   } catch (e) {
  //     return Left(
  //       e is DomainException ? e : UnknownException(message: e.toString()),
  //     );
  //   }
  // }

  @override
  Future<Either<DomainException, String>> updatePassword(
    UpdatePasswordRequestModel updatePasswordRequestModel,
  ) async {
    try {
      final response = await _dioRestClient.post(
        EndPoints.updateUserPassword,
        data: updatePasswordRequestModel.toJson(),
      );
      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(result.data);
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, LogOutDto>> logOut(
    LogOutRequestModel logOutRequestModel,
  ) async {
    try {
      const logOutApi = EndPoints.logOut;
      final response = await _dioRestClient.post(
        logOutApi,
        data: logOutRequestModel.toJson(),
      );
      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              LogOutDto.fromJson(result.data),
            );
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<DomainException, UserDto>> updateUserInfo(
    UpdateUserInfoRequestModel updateUserInfoRequestModel,
  ) async {
    try {
      final response = await _dioRestClient.put(
        EndPoints.updateUserInfo,
        data: updateUserInfoRequestModel.toJson(),
      );
      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              UserDto.fromJson(result.data),
            );
          }
          return Left(UnknownException());
        },
      );
    } catch (e) {
      return Left(
        e is DomainException ? e : UnknownException(message: e.toString()),
      );
    }
  }
}
