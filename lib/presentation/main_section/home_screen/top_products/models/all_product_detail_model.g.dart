// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllProductDetailModelImpl _$$AllProductDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AllProductDetailModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllProductDetailModelImplToJson(
        _$AllProductDetailModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['_id'] as String,
      vendorId: json['vendorId'] as String,
      productName: json['productName'] as String,
      description: json['description'] as String,
      image: (json['image'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      originalPrice: (json['originalPrice'] as num).toInt(),
      discountPrice: (json['discountPrice'] as num).toDouble(),
      discount: (json['discount'] as num).toInt(),
      discountActive: json['discountActive'] as bool,
      mainCategory: json['mainCategory'] as String,
      categoryId: json['categoryId'] as String,
      subCategoryId: json['subCategoryId'] as String,
      rating: (json['rating'] as num).toDouble(),
      numOfReviews: (json['numOfReviews'] as num).toInt(),
      size: (json['size'] as List<dynamic>).map((e) => e as String).toList(),
      color: (json['color'] as List<dynamic>).map((e) => e as String).toList(),
      stock: (json['stock'] as num).toInt(),
      status: json['status'] as bool,
      isProductVerified: json['isProductVerified'] as bool,
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isDeal: json['isDeal'] as bool,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'vendorId': instance.vendorId,
      'productName': instance.productName,
      'description': instance.description,
      'image': instance.image,
      'originalPrice': instance.originalPrice,
      'discountPrice': instance.discountPrice,
      'discount': instance.discount,
      'discountActive': instance.discountActive,
      'mainCategory': instance.mainCategory,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'rating': instance.rating,
      'numOfReviews': instance.numOfReviews,
      'size': instance.size,
      'color': instance.color,
      'stock': instance.stock,
      'status': instance.status,
      'isProductVerified': instance.isProductVerified,
      'reviews': instance.reviews,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isDeal': instance.isDeal,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      url: json['url'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      '_id': instance.id,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      user: json['user'] as String,
      name: json['name'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'name': instance.name,
      'rating': instance.rating,
      'comment': instance.comment,
      '_id': instance.id,
    };
