import 'package:dio/dio.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/cart/model/all_cart_model.dart';
import 'package:ecommerce_seller/utilz/http/http_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';

import '../../../../../utilz/failure/failure.dart';

class CartService {
  CartService();
  final httpClient = GetIt.I<HttpClient>();

  Future<Either<Failure, bool>> addCart(
      {required String productId,
      required String size,
      required int quantity}) async {
    try {
      final data = <String, dynamic>{
        "productId": productId,
        "size": size,
        "quantity": quantity
      };
      final response = await httpClient.post(
        '/cart/add',
        data: data,
      );
      if (response.statusCode == 201) {
        return Right(true);
      }
      return const Left(Failure.someThingWentWrong());
    } on DioException catch (dioError) {
      if (dioError.type == DioExceptionType.connectionError) {
        return const Left(Failure.socketError());
      }
      return const Left(Failure.someThingWentWrong());
    } catch (error) {
      return const Left(Failure.badResponse());
    }
  }

  Future<Either<Failure, AllCartModel>> fetchAllCart() async {
    try {
      final response = await httpClient.get(
        '/cart/get',
      );
      if (response.statusCode == 200) {
        if (response.data != null) {
          final cartData =
              AllCartModel.fromJson(response.data as Map<String, dynamic>);
          return Right(cartData);
        } else {
          return const Left(Failure.badResponse());
        }
      }
      return const Left(Failure.someThingWentWrong());
    } on DioException catch (dioError) {
      if (dioError.type == DioExceptionType.connectionError) {
        return const Left(Failure.socketError());
      }
      return const Left(Failure.someThingWentWrong());
    } catch (error) {
      return const Left(Failure.badResponse());
    }
  }

  Future<Either<Failure, int>> updateCart(
      {required String productId,
      required String size,
      required int quantity}) async {
    try {
      final data = <String, dynamic>{
        "productId": productId,
        "size": size,
        "quantity": quantity
      };
      final response = await httpClient.put('/cart/update', data: data);
      if (response.statusCode == 200) {
        if (response.data != null) {
          int quantity = response.data['data']['products'][0]['quantity'];
          return Right(quantity);
        } else {
          return const Left(Failure.badResponse());
        }
      }
      return const Left(Failure.someThingWentWrong());
    } on DioException catch (dioError) {
      if (dioError.type == DioExceptionType.connectionError) {
        return const Left(Failure.socketError());
      }
      return const Left(Failure.someThingWentWrong());
    } catch (error) {
      return const Left(Failure.badResponse());
    }
  }

  Future<Either<Failure, bool>> deleteCart(
      {required String productId}) async {
    try {
      final response = await httpClient.delete(
        '/cart/products/$productId',
      );
      if (response.statusCode == 200) {
        if (response.data != null) {
          return Right(true);
        } else {
          return const Left(Failure.badResponse());
        }
      }
      return const Left(Failure.someThingWentWrong());
    } on DioException catch (dioError) {
      if (dioError.type == DioExceptionType.connectionError) {
        return const Left(Failure.socketError());
      }
      return const Left(Failure.someThingWentWrong());
    } catch (error) {
      return const Left(Failure.badResponse());
    }
  }
}
