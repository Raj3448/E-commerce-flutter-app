// ignore_for_file: library_private_types_in_public_api

import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/model/create_new_acnt_resp_model.dart';
import 'package:ecommerce_seller/utilz/failure/auth_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mobx/mobx.dart';

import '../../../../utilz/auth_services/auth_service.dart';

part 'create_new_account_store.g.dart';

class CreateNewAccountStore = _CreateNewAccountStoreBase
    with _$CreateNewAccountStore;

abstract class _CreateNewAccountStoreBase with Store {
  _CreateNewAccountStoreBase({required this.authService});

  final IAuthService authService;

  @observable
  bool isLoading = false;

  @observable
  CreateNewAcntRespModel? createNewAcntRespModel;

  @observable
  Either<AuthFailure, void>? authFailure;

  @observable
  String? otpFailure;

  @observable
  bool otpSuccess = false;

  @action
  void signup(
      String userName, String email, String mobileNumber, String password) {
    isLoading = true;
    authFailure = null;
    authService.createNewAccount(userName, email, mobileNumber, password).then(
          (value) => {
            value.fold(
              (l) => authFailure = value,
              (r) => createNewAcntRespModel = r,
            ),
            isLoading = false
          },
        );
  }

  @action
  void otpVerification({required String otp, required String id}) {
    isLoading = true;
    authFailure = null;
    authService.verifyOtp(otp: otp, id: id).then(
          (value) => {
            value.fold(
              (l) => otpFailure = 'Something went wrong',
              (r) => otpSuccess = true,
            ),
            isLoading = false
          },
        );
  }
}
