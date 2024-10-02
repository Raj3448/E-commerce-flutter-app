import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';
part 'login_response_model.freezed.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String userName,
    required String mobileNumber,
    required String email,
    required String password,
    required String otp,
    @JsonKey(name: '_id') required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
