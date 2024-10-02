import 'package:dio/dio.dart';

class UserAgentInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['User-Agent'] = 'MyApp/1.0.0 (Flutter)';
    return super.onRequest(options, handler);
  }
}