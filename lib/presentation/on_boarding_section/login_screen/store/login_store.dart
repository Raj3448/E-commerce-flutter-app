// ignore_for_file: library_private_types_in_public_api

import 'package:ecommerce_seller/presentation/on_boarding_section/login_screen/model/login_response_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mobx/mobx.dart';

import '../../../../utilz/failure/auth_failure.dart';
import '../../../../utilz/auth_services/auth_service.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStoreBase({required this.authService});
  final AuthService authService;

  @observable
  bool isEmail = false;

  @observable
  bool isLoading = false;

  @observable
  Either<AuthFailure, LoginResponseModel>? authFailure;

  @observable
  String? otpFailure;

  @observable
  bool otpSuccess = false;

  @action
  void login({
    required String email,
    required String password,
  }) {
    isLoading = true;
    authFailure = null;
    authService
        .login(
          email,
          password
        )
        .then(
          (value) => {
            isLoading = false,
            authFailure = value,
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
