// ignore_for_file: inference_AuthFailure_on_function_invocation, inference_failure_on_function_invocation, deprecated_member_use, lines_longer_than_80_chars, use_build_context_synchronously, avoid_dynamic_calls

import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/model/create_new_acnt_resp_model.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/login_screen/model/login_response_model.dart';
import 'package:ecommerce_seller/utilz/failure/auth_failure.dart';
import 'package:ecommerce_seller/utilz/http/http_client.dart';
import 'package:ecommerce_seller/utilz/token_manager.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';

abstract class IAuthService {
  Future<Either<AuthFailure, LoginResponseModel>> login(
      String email, String password);
  Future<Either<AuthFailure, CreateNewAcntRespModel>> createNewAccount(
      String userName, String email, String mobileNumber, String password);
  Future<Either<VerifyOTPFailure, void>> verifyOtp(
      {required String otp, required String id, bool isNewMember = true});
}

class AuthService implements IAuthService {
  AuthService();

  final HttpClient httpClient = GetIt.I<HttpClient>();

  @override
  Future<Either<AuthFailure, LoginResponseModel>> login(
      String email, String password) async {
    final data = <String, dynamic>{'email': email, 'password': password};
    try {
      final request = await httpClient.post(
        '/login',
        data: data,
      );
      if (request.statusCode == 200) {
        final token = request.data['token'];
        if (token is String) {
          await GetIt.I<TokenManager>().saveToken(token);
        }
        return Right(LoginResponseModel.fromJson(request.data['data']));
      }

      if (request.statusCode == 401) {
        final dynamic code = request.data?['message'];
        final errorCode = code is String ? code : null;

        if (errorCode == null) {
          return const Left(AuthFailure.unknownError('Error unknown'));
        }
        if (errorCode == LoginErrorCodes.invalidEmail) {
          return const Left(AuthFailure.invalidEmail());
        }
        if (errorCode == LoginErrorCodes.wrongPass) {
          return const Left(AuthFailure.invalidPassword());
        }
        if (errorCode == LoginErrorCodes.userDoesNotExit) {
          return const Left(AuthFailure.userNotFound());
        }
        return const Left(AuthFailure.unknownError('Error unknown'));
      } else if (request.statusCode == 500) {
        return const Left(AuthFailure.internalServerError());
      } else if (request.statusCode == 502) {
        return const Left(AuthFailure.badGatewayError());
      }
      return const Left(AuthFailure.unknownError('Error unknown'));
    } catch (_) {
      return const Left(AuthFailure.unknownError('Error unknown'));
    }
  }

  @override
  Future<Either<AuthFailure, CreateNewAcntRespModel>> createNewAccount(
      String userName,
      String email,
      String mobileNumber,
      String password) async {
    final data = <String, dynamic>{
      "userName": userName,
      "email": email,
      "mobileNumber": mobileNumber,
      "password": password
    };
    try {
      final request = await httpClient.post(
        '/register',
        data: data,
      );
      if (request.statusCode == 201) {
        return Right(CreateNewAcntRespModel.fromJson(
            request.data['data'] as Map<String, dynamic>));
      }

      if (request.statusCode == 400) {
        final dynamic code = request.data?['message'];
        final errorCode = code is String ? code : null;

        if (errorCode == null) {
          return const Left(AuthFailure.unknownError('Error unknown'));
        }
        if (errorCode == SignUpErrorCodes.userAlreadyExists) {
          return const Left(AuthFailure.userAlreadyExists());
        }
        if (errorCode == SignUpErrorCodes.invalidEmail) {
          return const Left(AuthFailure.invalidEmail());
        }
        if (errorCode == SignUpErrorCodes.invalidPhoneNumber) {
          return const Left(AuthFailure.invalidPhoneNumber());
        }

        return const Left(AuthFailure.unknownError('Unknown error'));
      } else if (request.statusCode == 500) {
        return const Left(AuthFailure.internalServerError());
      } else if (request.statusCode == 502) {
        return const Left(AuthFailure.badGatewayError());
      }

      return const Left(AuthFailure.unknownError('Unknown error'));
    } catch (e) {
      return const Left(AuthFailure.networkError());
    }
  }

  @override
  Future<Either<VerifyOTPFailure, void>> verifyOtp(
      {required String otp,
      required String id,
      bool isNewMember = true}) async {
    final signUpData = <String, dynamic>{
      'otp': otp,
    };
    final loginData = <String, dynamic>{
      'otp': otp,
    };
    try {
      final phoneNumberVerificationResponse = !isNewMember
          ? await httpClient.post(
              '/api/verify-otp/',
              data: loginData,
            )
          : await httpClient.post(
              '/verify/$id',
              data: signUpData,
            );
      if (phoneNumberVerificationResponse.statusCode == 200) {
        final token = phoneNumberVerificationResponse.data['token'];
        if (token is String) {
          await GetIt.I<TokenManager>().saveToken(token);
        }
        // if (phoneNumberVerificationResponse.data['data']['userDetails'] !=
        //     null) {
        //   // final user = User.fromJson(
        //   //   phoneNumberVerificationResponse.data['data']['userDetails']
        //   //       as Map<String, dynamic>,
        //   // );
        //   // await userDetailsCache.saveUserDetails(user);
        // }
        return const Right(null);
      } else if (phoneNumberVerificationResponse.statusCode == 400) {
        final dynamic code =
            phoneNumberVerificationResponse.data?['error']?['details']?['name'];
        final errorCode = code is String ? code : null;

        if (errorCode == null) {
          return const Left(VerifyOTPFailure.unknown());
        }
        if (errorCode == VerifyOTPErrorCodes.invalidOTP) {
          return const Left(VerifyOTPFailure.invalidOTP());
        }

        return const Left(VerifyOTPFailure.unknown());
      }

      return const Left(VerifyOTPFailure.unknown());
    } catch (e) {
      return const Left(VerifyOTPFailure.unknown());
    }
  }
}

abstract class LoginErrorCodes {
  static const String invalidEmail = 'INVALID_EMAIL';
  static const String userDoesNotExit = 'User not found';
  static const String wrongPass = 'Invalid password';
}

abstract class SignUpErrorCodes {
  static const String userAlreadyExists =
      'User already exists with this mobile or email';
  static const String invalidEmail = 'INVALID_EMAIL';
  static const String invalidPhoneNumber = 'INVALID_PHONE_NUMBER';
}

abstract class VerifyOTPErrorCodes {
  static const String invalidOTP = 'INVALID_OTP';
}
