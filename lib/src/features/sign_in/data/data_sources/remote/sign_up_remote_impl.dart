import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:agro_app/src/features/sign_in/data/data_sources/remote/i_sign_up_remote.dart';

import '../../../../../core/api/client/rest/dio_client.dart';
import '../../../../../core/api/client/rest/endpoints.dart';
import '../../../../../core/exception/domain_exception.dart';
import '../../../domain/request_models/sign_in_request_model.dart';
import '../../models/sign_in_dto.dart';

@named
@LazySingleton(as: ISignInRemote)
class SignInRemoteImpl implements ISignInRemote {
  final DioRestClient _dioRestClient;
  SignInRemoteImpl(this._dioRestClient);

  @override
  Future<Either<DomainException, SignInDto>> signIn(
    SignInRequestModel signInRequestModel,
  ) async {
    try {
      const signInApi = EndPoints.signIn;
      final response = await _dioRestClient.post(
        signInApi,
        data: signInRequestModel.toJson(),
      );
      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              SignInDto.fromJson(result.data),
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
