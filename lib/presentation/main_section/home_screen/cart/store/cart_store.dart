// ignore_for_file: library_private_types_in_public_api

import 'package:ecommerce_seller/presentation/main_section/home_screen/cart/model/all_cart_model.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/cart/service/cart_service.dart';
import 'package:mobx/mobx.dart';
part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  _CartStoreBase({required this.cartService});
  final CartService cartService;

  @observable
  bool isLoading = false;

  @observable
  bool isUpdateLoading = false;

  @observable
  String? addCartfailure;

  @observable
  bool addCartSuccess = false;

  @observable
  String? getCartfailure;

  @observable
  String? updateCartfailure;

  @observable
  int? cartProductQuantity;

  @observable
  int? updateProdIndex;

  @observable
  AllCartModel? allCartModel;

  @action
  void addCart(
      {required String productId,
      required String size,
      required int quantity}) {
    isLoading = true;
    addCartfailure = null;
    cartService
        .addCart(productId: productId, size: size, quantity: quantity)
        .then(
          (value) => {
            value.fold(
              (l) => addCartfailure = 'Something went wrong',
              (r) => addCartSuccess = true,
            ),
            isLoading = false
          },
        );
  }

  @action
  Future<void> refresh() async{
    await cartService.fetchAllCart().then(
          (value) => {
            value.fold(
              (l) => null,
              (r) => allCartModel = r,
            ),
          },
        );
  }

  @action
  void fetchAllCart() {
    isLoading = true;
    addCartfailure = null;
    cartService.fetchAllCart().then(
          (value) => {
            value.fold(
              (l) => getCartfailure = 'Something went wrong',
              (r) => allCartModel = r,
            ),
            isLoading = false
          },
        );
  }

  @action
  void updateCart({
    required String productId,
    required String size,
    required int quantity,
    required int prodIndex,
  }) {
    isUpdateLoading = true;
    addCartfailure = null;
    cartProductQuantity = null;
    updateProdIndex = null;

    cartService
        .updateCart(
      productId: productId,
      size: size,
      quantity: quantity,
    )
        .then((value) {
      value.fold(
        (l) => updateCartfailure = 'Product not able to update!',
        (r) {
          cartProductQuantity = r;
          updateProdIndex = prodIndex;

          if (allCartModel != null) {
            final updatedProducts = allCartModel!.data.products.map((product) {
              if (product.product.id == productId) {
                return product.copyWith(quantity: quantity);
              }
              return product;
            }).toList();
            allCartModel = allCartModel!.copyWith(
              data: allCartModel!.data.copyWith(products: updatedProducts),
            );
            print(allCartModel);
          }
          refresh();
        },
      );
      isUpdateLoading = false;
    });
  }

  @action
  void deleteCart({
    required String productId,
  }) {
    isUpdateLoading = true;
    cartService
        .deleteCart(
      productId: productId,
    )
        .then((value) {
      value.fold(
        (l) => updateCartfailure = 'Product not able to delete!',
        (r) async {
          await refresh();
        },
      );
      isUpdateLoading = false;
    });
  }
}
