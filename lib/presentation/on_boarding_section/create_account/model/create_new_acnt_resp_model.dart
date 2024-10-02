import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_new_acnt_resp_model.freezed.dart';
part 'create_new_acnt_resp_model.g.dart';

@freezed
class CreateNewAcntRespModel with _$CreateNewAcntRespModel {
    const factory CreateNewAcntRespModel({
        required String userName,
        required String mobileNumber,
        required String email,
        required String password,
        required String otp,
        @JsonKey(name: '_id') required String id,
        required DateTime createdAt,
        required DateTime updatedAt,
    }) = _CreateNewAcntRespModel;

    factory CreateNewAcntRespModel.fromJson(Map<String, dynamic> json) => _$CreateNewAcntRespModelFromJson(json);
}
