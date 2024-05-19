import 'package:agro_app/src/features/sign_up/data/data_sources/remote/i_sign_up_remote.dart';
import 'package:agro_app/src/features/sign_up/data/models/sign_up_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/rest/dio_client.dart';
import '../../../../../core/api/client/rest/endpoints.dart';
import '../../../../../core/exception/domain_exception.dart';
import '../../../../../core/utils/loggers/logger.dart';
import '../../../domain/request_models/sign_up_request_model.dart';
import '../../models/country_code_dto.dart';

@named
@LazySingleton(as: ISignUpRemote)
class SignUpRemoteImpl implements ISignUpRemote {
  final DioRestClient _dioRestClient;
  SignUpRemoteImpl(this._dioRestClient);

  @override
  Future<Either<DomainException, SignUpDto>> signUp(
    SignUpRequestModel signUpRequestModel,
  ) async {
    try {
      const signUpApi = EndPoints.signUp;
      final response = await _dioRestClient.post(
        signUpApi,
        data: signUpRequestModel.toJson(),
      );
      return response.fold(
        (error) => Left(error),
        (result) {
          Log.i(result.data);
          if (result.statusCode == 201 || result.statusCode == 200) {
            return Right(
              SignUpDto.fromJson(result.data),
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
  Future<Either<DomainException, List<CountryCodeDto>>> countryCode() async {
    try {
      const signUpApi = EndPoints.countryList;
      final response = await _dioRestClient.get(signUpApi);
      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            return Right(
              _parseContryCode(result.data),
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

  List<CountryCodeDto> _parseContryCode(List<dynamic> data) {
    return data.map((item) => CountryCodeDto.fromJson(item)).toList();
  }
}
