// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on _ProductStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_ProductStore.isLoading', context: context);

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

  late final _$errorMessageAtom =
      Atom(name: '_ProductStore.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$allProductDetailModelAtom =
      Atom(name: '_ProductStore.allProductDetailModel', context: context);

  @override
  AllProductDetailModel? get allProductDetailModel {
    _$allProductDetailModelAtom.reportRead();
    return super.allProductDetailModel;
  }

  @override
  set allProductDetailModel(AllProductDetailModel? value) {
    _$allProductDetailModelAtom.reportWrite(value, super.allProductDetailModel,
        () {
      super.allProductDetailModel = value;
    });
  }

  late final _$productDataLoadedAtom =
      Atom(name: '_ProductStore.productDataLoaded', context: context);

  @override
  bool get productDataLoaded {
    _$productDataLoadedAtom.reportRead();
    return super.productDataLoaded;
  }

  @override
  set productDataLoaded(bool value) {
    _$productDataLoadedAtom.reportWrite(value, super.productDataLoaded, () {
      super.productDataLoaded = value;
    });
  }

  late final _$_ProductStoreActionController =
      ActionController(name: '_ProductStore', context: context);

  @override
  void fetchAllProduct() {
    final _$actionInfo = _$_ProductStoreActionController.startAction(
        name: '_ProductStore.fetchAllProduct');
    try {
      return super.fetchAllProduct();
    } finally {
      _$_ProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
allProductDetailModel: ${allProductDetailModel},
productDataLoaded: ${productDataLoaded}
    ''';
  }
}
