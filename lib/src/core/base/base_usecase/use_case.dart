import 'package:agro_app/src/core/base/base_request_model.dart';
import 'package:agro_app/src/core/base/base_usecase/result.dart';
import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/core/utils/loggers/logger.dart';
import 'package:fpdart/fpdart.dart';

/// How to call use case and use it:
/// final result = await _useCase.call();
/// if (result.isSuccessful && result.data != null) {
///    do something
/// }

/// This class describes a base class for use cases. You have to use its
/// in cases when you have incoming and outgoing data.
/// [R] - a type of a result data
/// [Input] - a type of a incoming data
abstract class UseCase<R, Request extends BaseRequestModel> {
  Future<Result<R, DomainException>> call(Request requestModel) async {
    final result = await execute(requestModel);
    return result.fold(
      (error) {
        Log.e(
          error,
          stackTrace: error.stackTrace,
        );
        return Result.failure(error);
      },
      (insertData) => Result.success(insertData),
    );
  }

  Future<Either<DomainException, R>> execute(Request requestModel);
}

/// This class describes a base class for use cases. You have to use its
/// in cases when you have only outgoing data.
/// [R] - a type of a result data
abstract class NoneInputBoundaryUseCase<R> {
  Future<Result<R, DomainException>> call() async {
    final result = await execute();
    return result.fold(
      (error) {
        Log.e(
          error,
          stackTrace: error.stackTrace,
        );
        return Result.failure(error);
      },
      (insertData) => Result.success(insertData),
    );
  }

  Future<Either<DomainException, R>> execute();
}

/// This class describes a base class for use cases. You have to use its
/// in cases when you have only outgoing data.
/// [Input] - a type of a incoming data
abstract class NoneOutputBoundaryUseCase<Request extends BaseRequestModel> {
  Future<Result<void, DomainException>> call(Request requestModel) async {
    final result = await execute(requestModel);
    return result.fold(
      (error) {
        Log.e(
          error,
          stackTrace: error.stackTrace,
        );
        return Result.failure(error);
      },
      (insertData) => Result.success(insertData),
    );
  }

  Future<Either<DomainException, void>> execute(Request requestModel);
}

/// This class describes a base class for use cases. You have to use its
/// in cases when you don't have outgoing and incoming data.
abstract class NoneInputOutputBoundaryUseCase {
  Future<Result<void, DomainException>> call() async {
    final result = await execute();
    return result.fold(
      (error) {
        Log.e(
          error,
          stackTrace: error.stackTrace,
        );
        return Result.failure(error);
      },
      (insertData) => Result.success(insertData),
    );
  }

  Future<Either<DomainException, void>> execute();
}

abstract class BaseStreamUseCase<R, Request extends BaseRequestModel> {
  Stream<Result<R, DomainException>> call(Request requestModel) async* {
    final stream = execute(requestModel);
    yield* stream.map((result) {
      return result.fold(
        (error) {
          Log.e(
            error,
            stackTrace: error.stackTrace,
          );
          return Result.failure(error);
        },
        (insertData) => Result.success(insertData),
      );
    });
  }

  Stream<Either<DomainException, R>> execute(Request requestModel);
}
