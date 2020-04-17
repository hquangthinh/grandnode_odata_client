import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

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
      requestHeader: false,
      responseHeader: false,
      requestBody: false,
      responseBody: false,
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
  static CookieManager _cookieManager;
  static String _tempCookieDir;

  static Future<void> initAsync() async {
    final tempDir = await getTemporaryDirectory();
    _tempCookieDir = tempDir.path;
  }

  static void initWithTempDir(String tempDir) {
    _tempCookieDir = tempDir;
  }

  static DioCacheManager getCacheManager(String baseUrl) {
    if (_cacheManager == null) {
      print('********************* cache manager is null create it **************************');
      _cacheManager = DioCacheManager(CacheConfig(baseUrl: baseUrl));
    }
    return _cacheManager;
  }

  static CookieManager getCookieManager() {
    if(_cookieManager == null) {
      print('********************* getCookieManager manager is null create it **************************');
      print(_tempCookieDir);
      assert(_tempCookieDir != null && _tempCookieDir.isNotEmpty, 'Cookie directory is not initialized.');
      _cookieManager = CookieManager(PersistCookieJar(dir: _tempCookieDir));
    }
    return _cookieManager;
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
      ..interceptors.add(getCookieManager())
      ..interceptors.add(createDebugLogInterceptor())
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
      ..interceptors.add(getCookieManager())
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
      ..interceptors.add(getCookieManager())
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
      ..interceptors.add(getCookieManager())
      ..interceptors.add(InterceptorsWrapper(onError: (DioError e) {
        print(e);
        return e;
      }));
    return client;
  }

  static String _normalizeBaseUrl(String url) =>
      url.endsWith("/") ? url : "$url/";
}
