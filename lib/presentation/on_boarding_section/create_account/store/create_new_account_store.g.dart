// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_account_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateNewAccountStore on _CreateNewAccountStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CreateNewAccountStoreBase.isLoading', context: context);

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

  late final _$createNewAcntRespModelAtom = Atom(
      name: '_CreateNewAccountStoreBase.createNewAcntRespModel',
      context: context);

  @override
  CreateNewAcntRespModel? get createNewAcntRespModel {
    _$createNewAcntRespModelAtom.reportRead();
    return super.createNewAcntRespModel;
  }

  @override
  set createNewAcntRespModel(CreateNewAcntRespModel? value) {
    _$createNewAcntRespModelAtom
        .reportWrite(value, super.createNewAcntRespModel, () {
      super.createNewAcntRespModel = value;
    });
  }

  late final _$authFailureAtom =
      Atom(name: '_CreateNewAccountStoreBase.authFailure', context: context);

  @override
  Either<AuthFailure, void>? get authFailure {
    _$authFailureAtom.reportRead();
    return super.authFailure;
  }

  @override
  set authFailure(Either<AuthFailure, void>? value) {
    _$authFailureAtom.reportWrite(value, super.authFailure, () {
      super.authFailure = value;
    });
  }

  late final _$otpFailureAtom =
      Atom(name: '_CreateNewAccountStoreBase.otpFailure', context: context);

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
      Atom(name: '_CreateNewAccountStoreBase.otpSuccess', context: context);

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

  late final _$_CreateNewAccountStoreBaseActionController =
      ActionController(name: '_CreateNewAccountStoreBase', context: context);

  @override
  void signup(
      String userName, String email, String mobileNumber, String password) {
    final _$actionInfo = _$_CreateNewAccountStoreBaseActionController
        .startAction(name: '_CreateNewAccountStoreBase.signup');
    try {
      return super.signup(userName, email, mobileNumber, password);
    } finally {
      _$_CreateNewAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void otpVerification({required String otp, required String id}) {
    final _$actionInfo = _$_CreateNewAccountStoreBaseActionController
        .startAction(name: '_CreateNewAccountStoreBase.otpVerification');
    try {
      return super.otpVerification(otp: otp, id: id);
    } finally {
      _$_CreateNewAccountStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
createNewAcntRespModel: ${createNewAcntRespModel},
authFailure: ${authFailure},
otpFailure: ${otpFailure},
otpSuccess: ${otpSuccess}
    ''';
  }
}
