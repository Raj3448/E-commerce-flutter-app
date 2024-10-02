import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
    const factory UserModel({
        @JsonKey(name: '_id') required String id,
        required String userName,
        required String mobileNumber,
        required String email,
        required String password,
        required String otp,
        required bool isVerified,
        required bool isVendorVerified,
        required int wallet,
        required String userType,
        required String referralCode,
        required dynamic referredBy,
        @Default([]) List<dynamic> dummyImage,
        required DateTime createdAt,
        required DateTime updatedAt,
        required bool? retailShop,
    }) = _UserModel;

    factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}