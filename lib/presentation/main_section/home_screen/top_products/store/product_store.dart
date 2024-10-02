// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_seller/presentation/main_section/home_screen/top_products/models/all_product_detail_model.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/top_products/service/product_service.dart';
import 'package:mobx/mobx.dart';

part 'product_store.g.dart';

class ProductStore = _ProductStore with _$ProductStore;

abstract class _ProductStore with Store {
  final ProductService productService;

  _ProductStore({required this.productService});

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @observable
  AllProductDetailModel? allProductDetailModel;

  @observable
  bool productDataLoaded = false;

  @action
  void fetchAllProduct() {
    if (productDataLoaded) {
      return;
    }
    isLoading = true;
    errorMessage = null;
    productService.fetchAllProduct().then((value) {
      value.fold(
        (l) {
          errorMessage = 'Something went wrong';
        },
        (r) {
          allProductDetailModel = r;
          productDataLoaded = true;
        },
      );
      isLoading = false;
    });
  }
}
