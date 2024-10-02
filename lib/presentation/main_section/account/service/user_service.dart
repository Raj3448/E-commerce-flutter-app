import 'package:dio/dio.dart';
import 'package:ecommerce_seller/presentation/main_section/account/model/user_model.dart';
import 'package:ecommerce_seller/utilz/failure/failure.dart';
import 'package:ecommerce_seller/utilz/http/http_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';

class UserService {
  UserService();
  final httpClient = GetIt.I<HttpClient>();


  Future<Either<Failure, UserModel>> fetchUserDetailsFromServer() async {
    try {
      final response = await httpClient.get('/profile');
      if (response.statusCode == 200) {
        if (response.data != null) {
          final userdata = UserModel.fromJson(response.data['data']['user'] as Map<String, dynamic>);
          return Right(userdata);
        } else {
          return const Left(Failure.badResponse());
        }
      }
      return const Left(Failure.someThingWentWrong());
    } on DioException catch (dioError) {
      if (dioError.type == DioExceptionType.connectionError) {
        return const Left(Failure.socketError())
      ;
      }
      return const Left(Failure.someThingWentWrong());
    } catch (error) {
      return const Left(Failure.badResponse());
    }
  }
}
