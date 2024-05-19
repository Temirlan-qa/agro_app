import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/rest/dio_client.dart';
import '../../../../../core/api/client/rest/endpoints.dart';
import '../../../../../core/exception/domain_exception.dart';
import '../../../domain/request_models/country_code_request_model.dart';
import '../../models/cities_dto.dart';
import '../../models/countries_dto.dart';
import 'i_countries_remote.dart';

@named
@LazySingleton(as: ICountriesRemote)
class CountriesRemoteImpl implements ICountriesRemote {
  final DioRestClient _dioRestClient;
  CountriesRemoteImpl(this._dioRestClient);

  @override
  Future<Either<DomainException, List<CountriesDto>>> getAllCountries() async {
    try {
      final response = await _dioRestClient.get(
        EndPoints.getAllCountries,
      );
      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            final parsedData = _parseCountriesList(result.data);
            return Right(parsedData);
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

  List<CountriesDto> _parseCountriesList(List<dynamic> data) {
    return data.map((item) => CountriesDto.fromJson(item)).toList();
  }

  List<CitiesDto> _parseCitiesList(List<dynamic> data) {
    return data.map((item) => CitiesDto.fromJson(item)).toList();
  }

  @override
  Future<Either<DomainException, List<CitiesDto>>> getCitiesByCountry(
      CountryCodeRequestModel requestModel) async {
    try {
      final response = await _dioRestClient.get(
        EndPoints.getCitiesByCountry,
        queryParameters: requestModel.toJson(),
      );
      return response.fold(
        (error) => Left(error),
        (result) {
          if (result.statusCode == 200) {
            final parsedData = _parseCitiesList(result.data);
            return Right(parsedData);
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
