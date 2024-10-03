// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartStore on _CartStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CartStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isUpdateLoadingAtom =
      Atom(name: '_CartStoreBase.isUpdateLoading', context: context);

  @override
  bool get isUpdateLoading {
    _$isUpdateLoadingAtom.reportRead();
    return super.isUpdateLoading;
  }

  @override
  set isUpdateLoading(bool value) {
    _$isUpdateLoadingAtom.reportWrite(value, super.isUpdateLoading, () {
      super.isUpdateLoading = value;
    });
  }

  late final _$addCartfailureAtom =
      Atom(name: '_CartStoreBase.addCartfailure', context: context);

  @override
  String? get addCartfailure {
    _$addCartfailureAtom.reportRead();
    return super.addCartfailure;
  }

  @override
  set addCartfailure(String? value) {
    _$addCartfailureAtom.reportWrite(value, super.addCartfailure, () {
      super.addCartfailure = value;
    });
  }

  late final _$addCartSuccessAtom =
      Atom(name: '_CartStoreBase.addCartSuccess', context: context);

  @override
  bool get addCartSuccess {
    _$addCartSuccessAtom.reportRead();
    return super.addCartSuccess;
  }

  @override
  set addCartSuccess(bool value) {
    _$addCartSuccessAtom.reportWrite(value, super.addCartSuccess, () {
      super.addCartSuccess = value;
    });
  }

  late final _$getCartfailureAtom =
      Atom(name: '_CartStoreBase.getCartfailure', context: context);

  @override
  String? get getCartfailure {
    _$getCartfailureAtom.reportRead();
    return super.getCartfailure;
  }

  @override
  set getCartfailure(String? value) {
    _$getCartfailureAtom.reportWrite(value, super.getCartfailure, () {
      super.getCartfailure = value;
    });
  }

  late final _$updateCartfailureAtom =
      Atom(name: '_CartStoreBase.updateCartfailure', context: context);

  @override
  String? get updateCartfailure {
    _$updateCartfailureAtom.reportRead();
    return super.updateCartfailure;
  }

  @override
  set updateCartfailure(String? value) {
    _$updateCartfailureAtom.reportWrite(value, super.updateCartfailure, () {
      super.updateCartfailure = value;
    });
  }

  late final _$cartProductQuantityAtom =
      Atom(name: '_CartStoreBase.cartProductQuantity', context: context);

  @override
  int? get cartProductQuantity {
    _$cartProductQuantityAtom.reportRead();
    return super.cartProductQuantity;
  }

  @override
  set cartProductQuantity(int? value) {
    _$cartProductQuantityAtom.reportWrite(value, super.cartProductQuantity, () {
      super.cartProductQuantity = value;
    });
  }

  late final _$updateProdIndexAtom =
      Atom(name: '_CartStoreBase.updateProdIndex', context: context);

  @override
  int? get updateProdIndex {
    _$updateProdIndexAtom.reportRead();
    return super.updateProdIndex;
  }

  @override
  set updateProdIndex(int? value) {
    _$updateProdIndexAtom.reportWrite(value, super.updateProdIndex, () {
      super.updateProdIndex = value;
    });
  }

  late final _$allCartModelAtom =
      Atom(name: '_CartStoreBase.allCartModel', context: context);

  @override
  AllCartModel? get allCartModel {
    _$allCartModelAtom.reportRead();
    return super.allCartModel;
  }

  @override
  set allCartModel(AllCartModel? value) {
    _$allCartModelAtom.reportWrite(value, super.allCartModel, () {
      super.allCartModel = value;
    });
  }

  late final _$refreshAsyncAction =
      AsyncAction('_CartStoreBase.refresh', context: context);

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  late final _$_CartStoreBaseActionController =
      ActionController(name: '_CartStoreBase', context: context);

  @override
  void addCart(
      {required String productId,
      required String size,
      required int quantity}) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.addCart');
    try {
      return super
          .addCart(productId: productId, size: size, quantity: quantity);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchAllCart() {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.fetchAllCart');
    try {
      return super.fetchAllCart();
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCart(
      {required String productId,
      required String size,
      required int quantity,
      required int prodIndex}) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.updateCart');
    try {
      return super.updateCart(
          productId: productId,
          size: size,
          quantity: quantity,
          prodIndex: prodIndex);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteCart({required String productId}) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.deleteCart');
    try {
      return super.deleteCart(productId: productId);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isUpdateLoading: ${isUpdateLoading},
addCartfailure: ${addCartfailure},
addCartSuccess: ${addCartSuccess},
getCartfailure: ${getCartfailure},
updateCartfailure: ${updateCartfailure},
cartProductQuantity: ${cartProductQuantity},
updateProdIndex: ${updateProdIndex},
allCartModel: ${allCartModel}
    ''';
  }
}
