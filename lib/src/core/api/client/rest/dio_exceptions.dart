import 'package:agro_app/generated/l10n.dart';
import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = S.current.cancelRequest;
        break;
      case DioExceptionType.connectionTimeout:
        message = S.current.connectionTimeout;
        break;
      case DioExceptionType.receiveTimeout:
        message = S.current.receiveTimeout;
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = S.current.receiveTimeout;
        break;
      case DioExceptionType.unknown:
        if (dioError.message == null) {
          message = S.current.unexpectedError;
          break;
        }

        if (dioError.message!.contains('SocketException')) {
          message = S.current.noInternetConnection;
          break;
        }

        message = S.current.unexpectedError;
        break;
      default:
        message = S.current.unexpectedError;
        break;
    }
  }

  String _handleError(int? statusCode, error) {
    switch (statusCode) {
      case 400:
        return S.current.badRequest;
      case 401:
        return S.current.unauthorized;
      case 403:
        return S.current.forbidden;
      case 404:
        return error['message'];
      case 500:
        return S.current.internalServerError;
      case 502:
        return S.current.badGateway;
      default:
        return S.current.unexpectedError;
    }
  }

  @override
  String toString() => message;
}
