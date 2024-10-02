import 'package:dio/dio.dart';
import 'package:ecommerce_seller/utilz/token_manager.dart';

class AuthInterceptor extends Interceptor {
  final TokenManager tokenManager;

  AuthInterceptor(this.tokenManager);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String? token = await tokenManager.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return super.onRequest(options, handler);
  }
}