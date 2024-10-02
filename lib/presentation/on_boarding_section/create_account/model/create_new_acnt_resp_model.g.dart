// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_acnt_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNewAcntRespModelImpl _$$CreateNewAcntRespModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNewAcntRespModelImpl(
      userName: json['userName'] as String,
      mobileNumber: json['mobileNumber'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      otp: json['otp'] as String,
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CreateNewAcntRespModelImplToJson(
        _$CreateNewAcntRespModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'mobileNumber': instance.mobileNumber,
      'email': instance.email,
      'password': instance.password,
      'otp': instance.otp,
      '_id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
