// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStoreBase, Store {
  late final _$isEmailAtom =
      Atom(name: '_LoginStoreBase.isEmail', context: context);

  @override
  bool get isEmail {
    _$isEmailAtom.reportRead();
    return super.isEmail;
  }

  @override
  set isEmail(bool value) {
    _$isEmailAtom.reportWrite(value, super.isEmail, () {
      super.isEmail = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_LoginStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$authFailureAtom =
      Atom(name: '_LoginStoreBase.authFailure', context: context);

  @override
  Either<AuthFailure, LoginResponseModel>? get authFailure {
    _$authFailureAtom.reportRead();
    return super.authFailure;
  }

  @override
  set authFailure(Either<AuthFailure, LoginResponseModel>? value) {
    _$authFailureAtom.reportWrite(value, super.authFailure, () {
      super.authFailure = value;
    });
  }

  late final _$otpFailureAtom =
      Atom(name: '_LoginStoreBase.otpFailure', context: context);

  @override
  String? get otpFailure {
    _$otpFailureAtom.reportRead();
    return super.otpFailure;
  }

  @override
  set otpFailure(String? value) {
    _$otpFailureAtom.reportWrite(value, super.otpFailure, () {
      super.otpFailure = value;
    });
  }

  late final _$otpSuccessAtom =
      Atom(name: '_LoginStoreBase.otpSuccess', context: context);

  @override
  bool get otpSuccess {
    _$otpSuccessAtom.reportRead();
    return super.otpSuccess;
  }

  @override
  set otpSuccess(bool value) {
    _$otpSuccessAtom.reportWrite(value, super.otpSuccess, () {
      super.otpSuccess = value;
    });
  }

  late final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase', context: context);

  @override
  void login({required String email, required String password}) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.login');
    try {
      return super.login(email: email, password: password);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void otpVerification({required String otp, required String id}) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.otpVerification');
    try {
      return super.otpVerification(otp: otp, id: id);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isEmail: ${isEmail},
isLoading: ${isLoading},
authFailure: ${authFailure},
otpFailure: ${otpFailure},
otpSuccess: ${otpSuccess}
    ''';
  }
}
