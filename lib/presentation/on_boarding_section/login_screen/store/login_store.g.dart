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

  late final _$selectCountryDialCodeAtom =
      Atom(name: '_LoginStoreBase.selectCountryDialCode', context: context);

  @override
  String? get selectCountryDialCode {
    _$selectCountryDialCodeAtom.reportRead();
    return super.selectCountryDialCode;
  }

  @override
  set selectCountryDialCode(String? value) {
    _$selectCountryDialCodeAtom.reportWrite(value, super.selectCountryDialCode,
        () {
      super.selectCountryDialCode = value;
    });
  }

  late final _$selectCountryCodeAtom =
      Atom(name: '_LoginStoreBase.selectCountryCode', context: context);

  @override
  String? get selectCountryCode {
    _$selectCountryCodeAtom.reportRead();
    return super.selectCountryCode;
  }

  @override
  set selectCountryCode(String? value) {
    _$selectCountryCodeAtom.reportWrite(value, super.selectCountryCode, () {
      super.selectCountryCode = value;
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

  late final _$identifierAtom =
      Atom(name: '_LoginStoreBase.identifier', context: context);

  @override
  String get identifier {
    _$identifierAtom.reportRead();
    return super.identifier;
  }

  @override
  set identifier(String value) {
    _$identifierAtom.reportWrite(value, super.identifier, () {
      super.identifier = value;
    });
  }

  late final _$authFailureAtom =
      Atom(name: '_LoginStoreBase.authFailure', context: context);

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

  late final _$selectCountryFlagEmojiAtom =
      Atom(name: '_LoginStoreBase.selectCountryFlagEmoji', context: context);

  @override
  String? get selectCountryFlagEmoji {
    _$selectCountryFlagEmojiAtom.reportRead();
    return super.selectCountryFlagEmoji;
  }

  @override
  set selectCountryFlagEmoji(String? value) {
    _$selectCountryFlagEmojiAtom
        .reportWrite(value, super.selectCountryFlagEmoji, () {
      super.selectCountryFlagEmoji = value;
    });
  }

  late final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase', context: context);

  @override
  void login(String identifier) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.login');
    try {
      return super.login(identifier);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isEmail: ${isEmail},
selectCountryDialCode: ${selectCountryDialCode},
selectCountryCode: ${selectCountryCode},
isLoading: ${isLoading},
identifier: ${identifier},
authFailure: ${authFailure},
selectCountryFlagEmoji: ${selectCountryFlagEmoji}
    ''';
  }
}
