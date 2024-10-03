import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_cart_model.freezed.dart';
part 'all_cart_model.g.dart';


@freezed
class AllCartModel with _$AllCartModel {
    const factory AllCartModel({
        required Data data,
    }) = _AllCartModel;

    factory AllCartModel.fromJson(Map<String, dynamic> json) => _$AllCartModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: '_id') required String id,
        required String user,
        required List<ProductElement> products,
        required dynamic coupon,
        required bool walletUsed,
        required int shippingPrice,
        required double totalPaidAmount,
        required DateTime createdAt,
        required DateTime updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ProductElement with _$ProductElement {
    const factory ProductElement({
        required ProductProduct product,
        required String vendorId,
        required String size,
        required int quantity,
        required double price,
        required double totalAmount,
        @JsonKey(name: '_id') required String id,
    }) = _ProductElement;

    factory ProductElement.fromJson(Map<String, dynamic> json) => _$ProductElementFromJson(json);
}

@freezed
class ProductProduct with _$ProductProduct {
    const factory ProductProduct({
        @JsonKey(name: '_id') required String id,
        required String productName,
        required List<Image> image,
    }) = _ProductProduct;

    factory ProductProduct.fromJson(Map<String, dynamic> json) => _$ProductProductFromJson(json);
}

@freezed
class Image with _$Image {
    const factory Image({
        required String url,
        @JsonKey(name: '_id') required String id,
    }) = _Image;

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
