abstract class DomainException implements Exception {
  String message;
  StackTrace? stackTrace;

  DomainException({required this.message, this.stackTrace});
}

class UnknownException extends DomainException {
  UnknownException({String? message, StackTrace? stackTrace})
      : super(
          message: message ?? "Unknown Exception",
          stackTrace: stackTrace,
        );
}

class BadRequest extends DomainException {
  BadRequest({StackTrace? stackTrace})
      : super(message: "Bad Request", stackTrace: stackTrace);
}

class UnknownError extends DomainException {
  UnknownError() : super(message: "Unknown Error");
}

class NoInternetConnectionException extends DomainException {
  NoInternetConnectionException() : super(message: "No internet Connection");
}

class NetworkException extends DomainException {
  NetworkException({required String message, StackTrace? stackTrace})
      : super(message: message, stackTrace: stackTrace);
}

class MapperException extends DomainException {
  MapperException() : super(message: "Mapper exception");
}
