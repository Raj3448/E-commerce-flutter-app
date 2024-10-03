// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllCartModelImpl _$$AllCartModelImplFromJson(Map<String, dynamic> json) =>
    _$AllCartModelImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllCartModelImplToJson(_$AllCartModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['_id'] as String,
      user: json['user'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupon: json['coupon'],
      walletUsed: json['walletUsed'] as bool,
      shippingPrice: (json['shippingPrice'] as num).toInt(),
      totalPaidAmount: (json['totalPaidAmount'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'products': instance.products,
      'coupon': instance.coupon,
      'walletUsed': instance.walletUsed,
      'shippingPrice': instance.shippingPrice,
      'totalPaidAmount': instance.totalPaidAmount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$ProductElementImpl _$$ProductElementImplFromJson(Map<String, dynamic> json) =>
    _$ProductElementImpl(
      product: ProductProduct.fromJson(json['product'] as Map<String, dynamic>),
      vendorId: json['vendorId'] as String,
      size: json['size'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ProductElementImplToJson(
        _$ProductElementImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'vendorId': instance.vendorId,
      'size': instance.size,
      'quantity': instance.quantity,
      'price': instance.price,
      'totalAmount': instance.totalAmount,
      '_id': instance.id,
    };

_$ProductProductImpl _$$ProductProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductProductImpl(
      id: json['_id'] as String,
      productName: json['productName'] as String,
      image: (json['image'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductProductImplToJson(
        _$ProductProductImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productName': instance.productName,
      'image': instance.image,
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
