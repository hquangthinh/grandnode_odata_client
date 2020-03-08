import 'package:dio/dio.dart';

const int kConnectTimeout = 10000;
const int kReceiveTimeout = 10000;

class AuthInterceptor extends Interceptor {
  final String accessToken;

  AuthInterceptor(this.accessToken);

  @override
  onRequest(RequestOptions options) {
    var tokenHeader = accessToken.length > 0 ? "Bearer " + accessToken : '';
    options.headers.update("Authorization", (_) => tokenHeader,
        ifAbsent: () => tokenHeader);
    return super.onRequest(options);
  }
}

LogInterceptor createDebugLogInterceptor() => LogInterceptor(
      requestHeader: true,
      responseHeader: true,
      requestBody: true,
      responseBody: true,
    );

LogInterceptor createInfoLogInterceptor() => LogInterceptor(
      request: true,
      requestHeader: false,
      responseHeader: false,
      requestBody: false,
      responseBody: false,
    );

class DioFactory {
  static Dio createPublicClient({
    String apiBaseUrl,
    String contentType = 'application/json',
  }) {
    final client = Dio()
      ..options = BaseOptions(
        baseUrl: _normalizeBaseUrl(apiBaseUrl),
        connectTimeout: kConnectTimeout,
        receiveTimeout: kReceiveTimeout,
        contentType: contentType,
        headers: {'Accept': 'application/json'},
      )
      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true))
      ..interceptors.add(InterceptorsWrapper(onError: (DioError e) {
        print(e);
        return e;
      }));
    return client;
  }

  static Dio create({
    String apiBaseUrl,
    String contentType = 'application/json',
    String accessToken,
  }) {
    final client = Dio()
      ..options = BaseOptions(
        baseUrl: _normalizeBaseUrl(apiBaseUrl),
        connectTimeout: kConnectTimeout,
        receiveTimeout: kReceiveTimeout,
        contentType: contentType,
        headers: {'Accept': 'application/json'},
      )
      ..interceptors.add(AuthInterceptor(accessToken))
      ..interceptors.add(createDebugLogInterceptor())
      ..interceptors.add(InterceptorsWrapper(onError: (DioError e) {
        print(e);
        return e;
      }));
    return client;
  }

  static String _normalizeBaseUrl(String url) =>
      url.endsWith("/") ? url : "$url/";
}
