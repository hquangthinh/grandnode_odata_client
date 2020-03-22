import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';

const int kConnectTimeout = 10000;
const int kReceiveTimeout = 10000;
const int kDefaultCacheDuration = 3600;

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
  static DioCacheManager _cacheManager;

  static DioCacheManager getCacheManager(String baseUrl) {
    if (null == _cacheManager) {
      _cacheManager = DioCacheManager(CacheConfig(baseUrl: baseUrl));
    }
    return _cacheManager;
  }

  static Dio createPublicClient({
    @required String apiBaseUrl,
    String contentType = 'application/json',
    int connectTimeout = kConnectTimeout,
    int receiveTimeout = kReceiveTimeout,
  }) {
    final client = Dio()
      ..options = BaseOptions(
        baseUrl: _normalizeBaseUrl(apiBaseUrl),
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        contentType: contentType,
        headers: {'Accept': contentType},
      )
      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true))
      ..interceptors.add(InterceptorsWrapper(onError: (DioError e) {
        print(e);
        return e;
      }));
    return client;
  }

  static Dio create({
    @required String apiBaseUrl,
    @required String accessToken,
    String contentType = 'application/json',
    int connectTimeout = kConnectTimeout,
    int receiveTimeout = kReceiveTimeout,
  }) {
    final client = Dio()
      ..options = BaseOptions(
        baseUrl: _normalizeBaseUrl(apiBaseUrl),
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        contentType: contentType,
        headers: {'Accept': contentType},
      )
      ..interceptors.add(AuthInterceptor(accessToken))
      ..interceptors.add(createDebugLogInterceptor())
      ..interceptors.add(InterceptorsWrapper(onError: (DioError e) {
        print(e);
        return e;
      }));
    return client;
  }

  static Dio createPublicWithCache({
    @required String apiBaseUrl,
    String contentType = 'application/json',
    int connectTimeout = kConnectTimeout,
    int receiveTimeout = kReceiveTimeout,
    int cacheDurationInSeconds = kDefaultCacheDuration,
  }) {
    assert(apiBaseUrl != null && apiBaseUrl.isNotEmpty);
    final client = Dio()
      ..options = BaseOptions(
          baseUrl: apiBaseUrl,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout,
          contentType: contentType,
          headers: {'Accept': contentType},
          extra: buildCacheOptions(Duration(seconds: cacheDurationInSeconds))
              .extra)
      ..interceptors.add(createDebugLogInterceptor())
      ..interceptors.add(getCacheManager(apiBaseUrl).interceptor)
      ..interceptors.add(InterceptorsWrapper(onError: (DioError e) {
        print(e);
        return e;
      }));
    return client;
  }

  static Dio createWithCache({
    @required String apiBaseUrl,
    @required String accessToken,
    String contentType = 'application/json',
    int connectTimeout = kConnectTimeout,
    int receiveTimeout = kReceiveTimeout,
    int cacheDurationInSeconds = kDefaultCacheDuration,
  }) {
    assert(apiBaseUrl != null && apiBaseUrl.isNotEmpty);
    final client = Dio()
      ..options = BaseOptions(
          baseUrl: apiBaseUrl,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout,
          contentType: contentType,
          headers: {'Accept': contentType},
          extra: buildCacheOptions(Duration(seconds: cacheDurationInSeconds))
              .extra)
      ..interceptors.add(AuthInterceptor(accessToken))
      ..interceptors.add(createDebugLogInterceptor())
      ..interceptors.add(getCacheManager(apiBaseUrl).interceptor)
      ..interceptors.add(InterceptorsWrapper(onError: (DioError e) {
        print(e);
        return e;
      }));
    return client;
  }

  static String _normalizeBaseUrl(String url) =>
      url.endsWith("/") ? url : "$url/";
}
