// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['_id'] as String,
      userName: json['userName'] as String,
      mobileNumber: json['mobileNumber'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      otp: json['otp'] as String,
      isVerified: json['isVerified'] as bool,
      isVendorVerified: json['isVendorVerified'] as bool,
      wallet: (json['wallet'] as num).toInt(),
      userType: json['userType'] as String,
      referralCode: json['referralCode'] as String,
      referredBy: json['referredBy'],
      dummyImage: json['dummyImage'] as List<dynamic>? ?? const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      retailShop: json['retailShop'] as bool?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userName': instance.userName,
      'mobileNumber': instance.mobileNumber,
      'email': instance.email,
      'password': instance.password,
      'otp': instance.otp,
      'isVerified': instance.isVerified,
      'isVendorVerified': instance.isVendorVerified,
      'wallet': instance.wallet,
      'userType': instance.userType,
      'referralCode': instance.referralCode,
      'referredBy': instance.referredBy,
      'dummyImage': instance.dummyImage,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'retailShop': instance.retailShop,
    };
