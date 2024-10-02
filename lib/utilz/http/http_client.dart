import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:ecommerce_seller/utilz/http_interceptors/auth_interceptors.dart';
import 'package:ecommerce_seller/utilz/http_interceptors/error_interceptors.dart';
import 'package:ecommerce_seller/utilz/http_interceptors/user_agent_interceptors.dart';
// import 'package:dio_firebase_performance/dio_firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpClient with DioMixin implements Dio {
  HttpClient({BaseOptions? baseOptions}) {
    // Set up base options and HTTP adapter
    options = (baseOptions ?? BaseOptions()).copyWith(
      validateStatus: (int? status) {
        return status != null;
      },
    );

    // Use IOHttpClientAdapter for network communication
    httpClientAdapter = IOHttpClientAdapter();

    // Get token storage from a service locator (GetIt in this case)
    // final tokenStorage = GetIt.I<TokenManager>();

    interceptors.addAll([
      ErrorInterceptor(),
      AuthInterceptor(),
      UserAgentInterceptor(),
      // DioFirebasePerformanceInterceptor(),
    ]);

    // Add pretty logger for debugging in dev mode
    if (kDebugMode) {
      interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          responseHeader: true,
          requestBody: true,
          responseBody: false,
          compact: true,
        ),
      );
    }

    // Add additional Sentry integration or logging if needed.
  }

  // Cache configuration with default options
  static CacheOptions defaultCacheOptions = CacheOptions(
    store: MemCacheStore(), // Memory store for cache
    maxStale: const Duration(hours: 1), // Cache max stale duration
    hitCacheOnErrorExcept: [401, 403, 500], // Cache on certain errors
  );
}