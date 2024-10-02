import 'package:dio/dio.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/top_products/models/all_product_detail_model.dart';
import 'package:ecommerce_seller/utilz/failure/failure.dart';
import 'package:ecommerce_seller/utilz/http/http_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';

class ProductService {
  ProductService();
  final httpClient = GetIt.I<HttpClient>();


  Future<Either<Failure, AllProductDetailModel>> fetchAllProduct() async {
    try {
      final response = await httpClient.get('/products');
      if (response.statusCode == 200) {
        if (response.data != null) {
          final allProductDetailModel = AllProductDetailModel.fromJson(response.data as Map<String, dynamic>);
          return Right(allProductDetailModel);
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
