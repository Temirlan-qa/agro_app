import 'package:agro_app/src/core/api/client/rest/dio_exceptions.dart';
import 'package:agro_app/src/core/constants/api/api_constants.dart';
import 'package:agro_app/src/core/exception/domain_exception.dart';
import 'package:agro_app/src/core/utils/loggers/logger.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'dio_config.dart';
part 'dio_interceptor.dart';

@singleton
class DioRestClient {
  late final Dio _dio;
  DioRestClient() {
    _dio = Dio();
  }

  // Dio Client configurations
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    BaseOptions options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: DioConfigurations.connectTimeout,
      receiveTimeout: DioConfigurations.receiveTimeout,
    );
    _dio.options = options;
    _dio.interceptors.add(DioInterceptor(
        tokenInterceptor: await SharedPreferences.getInstance()));
  }

  Dio get dio => _dio;

  //Get:-----------------------------------------------------------------------
  Future<Either<DomainException, Response>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Either<DomainException, Response>> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

// Put:-----------------------------------------------------------------------
  Future<Either<DomainException, Response>> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<Either<DomainException, Response>> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return Right(response.data);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Upload:--------------------------------------------------------------------
  Future<Either<DomainException, Response>> upload(
    String url, {
    required String filePath,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: FormData.fromMap({
          'file': await MultipartFile.fromFile(filePath),
        }),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Upload multiple files:-----------------------------------------------------
  Future<Either<DomainException, Response>> uploadMultipleFiles(
    String url, {
    required List<String> filePaths,
    List<String>? filenames,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: FormData.fromMap({
          'files': filePaths
              .map(
                (file) => MultipartFile.fromFileSync(
                  file,
                  filename: filenames?[filePaths.indexOf(file)],
                ),
              )
              .toList(),
        }),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Download:------------------------------------------------------------------
  Future<Either<DomainException, Response>> download(
    String url,
    String savePath, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.download(
        url,
        savePath,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  DomainException _handleError(e, StackTrace s) {
    if (e is DioException) {
      return _handleDioException(e, s);
    }
    return UnknownException();
  }

  DomainException _handleDioException(
    DioException e,
    StackTrace s,
  ) {
    final errorMessage = DioExceptions.fromDioError(e).toString();
    return NetworkException(message: errorMessage, stackTrace: s);
  }
}
