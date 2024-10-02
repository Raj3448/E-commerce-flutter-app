import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_product_detail_model.freezed.dart';
part 'all_product_detail_model.g.dart';


@freezed
class AllProductDetailModel with _$AllProductDetailModel {
    const factory AllProductDetailModel({
        required List<Datum> data,
    }) = _AllProductDetailModel;

    factory AllProductDetailModel.fromJson(Map<String, dynamic> json) => _$AllProductDetailModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: '_id') required String id,
        required String vendorId,
        required String productName,
        required String description,
        required List<Image> image,
        required int originalPrice,
        required double discountPrice,
        required int discount,
        required bool discountActive,
        required String mainCategory,
        required String categoryId,
        required String subCategoryId,
        required double rating,
        required int numOfReviews,
        required List<String> size,
        required List<String> color,
        required int stock,
        required bool status,
        required bool isProductVerified,
        required List<Review> reviews,
        required DateTime createdAt,
        required DateTime updatedAt,
        required bool isDeal,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Image with _$Image {
    const factory Image({
        required String url,
        @JsonKey(name: '_id') required String id,
    }) = _Image;

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Review with _$Review {
    const factory Review({
        required String user,
        required String name,
        required int rating,
        required String comment,
        @JsonKey(name: '_id') required String id,
    }) = _Review;

    factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
