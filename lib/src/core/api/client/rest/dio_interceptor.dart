part of 'dio_client.dart';

class DioInterceptor extends Interceptor {
  final SharedPreferences? tokenInterceptor;

  DioInterceptor({
    this.tokenInterceptor,
  });
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? accessToken = tokenInterceptor?.getString('accessToken');

    if (accessToken != null) {
      options.headers['Authorization'] = accessToken;
    }

    Log.i(
      'onRequest: ${options.method} ${options.path}',
      name: 'DioInterceptor',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Log.s(
      'onResponse: ${response.statusCode} ${response.statusMessage}',
      name: 'DioInterceptor',
    );
    if (response.statusCode == 401 || response.statusCode == 403) {
      tokenInterceptor?.remove('accessToken');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    Log.e(
      'onError: ${err.response?.statusCode} ${err.response?.statusMessage}',
      name: 'DioInterceptor',
    );
    super.onError(err, handler);
  }
}
