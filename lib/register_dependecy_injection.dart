import 'package:dio/dio.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/store/create_new_account_store.dart';
import 'package:ecommerce_seller/utilz/auth_services/auth_service.dart';
import 'package:ecommerce_seller/utilz/env/env.dart';
import 'package:ecommerce_seller/utilz/http/http_client.dart';
import 'package:ecommerce_seller/utilz/token_manager.dart';
import 'package:get_it/get_it.dart';

Future<void> registerDependecyInjections() async{
  GetIt.instance.registerLazySingleton<HttpClient>(
        () => HttpClient(baseOptions: BaseOptions(baseUrl: Env.serverUrl)),
      );
  GetIt.instance.registerLazySingleton(
        () => AuthService(),
      );
  GetIt.instance.registerLazySingleton(
        () => CreateNewAccountStore(authService: GetIt.I<AuthService>())
      );
  GetIt.instance.registerLazySingleton(
        () => TokenManager()
      );
}