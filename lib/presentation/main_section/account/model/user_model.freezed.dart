// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get isVendorVerified => throw _privateConstructorUsedError;
  int get wallet => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  String get referralCode => throw _privateConstructorUsedError;
  dynamic get referredBy => throw _privateConstructorUsedError;
  List<dynamic> get dummyImage => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool? get retailShop => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String userName,
      String mobileNumber,
      String email,
      String password,
      String otp,
      bool isVerified,
      bool isVendorVerified,
      int wallet,
      String userType,
      String referralCode,
      dynamic referredBy,
      List<dynamic> dummyImage,
      DateTime createdAt,
      DateTime updatedAt,
      bool? retailShop});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? mobileNumber = null,
    Object? email = null,
    Object? password = null,
    Object? otp = null,
    Object? isVerified = null,
    Object? isVendorVerified = null,
    Object? wallet = null,
    Object? userType = null,
    Object? referralCode = null,
    Object? referredBy = freezed,
    Object? dummyImage = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? retailShop = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isVendorVerified: null == isVendorVerified
          ? _value.isVendorVerified
          : isVendorVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as int,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dummyImage: null == dummyImage
          ? _value.dummyImage
          : dummyImage // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      retailShop: freezed == retailShop
          ? _value.retailShop
          : retailShop // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String userName,
      String mobileNumber,
      String email,
      String password,
      String otp,
      bool isVerified,
      bool isVendorVerified,
      int wallet,
      String userType,
      String referralCode,
      dynamic referredBy,
      List<dynamic> dummyImage,
      DateTime createdAt,
      DateTime updatedAt,
      bool? retailShop});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? mobileNumber = null,
    Object? email = null,
    Object? password = null,
    Object? otp = null,
    Object? isVerified = null,
    Object? isVendorVerified = null,
    Object? wallet = null,
    Object? userType = null,
    Object? referralCode = null,
    Object? referredBy = freezed,
    Object? dummyImage = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? retailShop = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isVendorVerified: null == isVendorVerified
          ? _value.isVendorVerified
          : isVendorVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as int,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dummyImage: null == dummyImage
          ? _value._dummyImage
          : dummyImage // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      retailShop: freezed == retailShop
          ? _value.retailShop
          : retailShop // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.userName,
      required this.mobileNumber,
      required this.email,
      required this.password,
      required this.otp,
      required this.isVerified,
      required this.isVendorVerified,
      required this.wallet,
      required this.userType,
      required this.referralCode,
      required this.referredBy,
      final List<dynamic> dummyImage = const [],
      required this.createdAt,
      required this.updatedAt,
      required this.retailShop})
      : _dummyImage = dummyImage;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String userName;
  @override
  final String mobileNumber;
  @override
  final String email;
  @override
  final String password;
  @override
  final String otp;
  @override
  final bool isVerified;
  @override
  final bool isVendorVerified;
  @override
  final int wallet;
  @override
  final String userType;
  @override
  final String referralCode;
  @override
  final dynamic referredBy;
  final List<dynamic> _dummyImage;
  @override
  @JsonKey()
  List<dynamic> get dummyImage {
    if (_dummyImage is EqualUnmodifiableListView) return _dummyImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dummyImage);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool? retailShop;

  @override
  String toString() {
    return 'UserModel(id: $id, userName: $userName, mobileNumber: $mobileNumber, email: $email, password: $password, otp: $otp, isVerified: $isVerified, isVendorVerified: $isVendorVerified, wallet: $wallet, userType: $userType, referralCode: $referralCode, referredBy: $referredBy, dummyImage: $dummyImage, createdAt: $createdAt, updatedAt: $updatedAt, retailShop: $retailShop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isVendorVerified, isVendorVerified) ||
                other.isVendorVerified == isVendorVerified) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            const DeepCollectionEquality()
                .equals(other.referredBy, referredBy) &&
            const DeepCollectionEquality()
                .equals(other._dummyImage, _dummyImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.retailShop, retailShop) ||
                other.retailShop == retailShop));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      mobileNumber,
      email,
      password,
      otp,
      isVerified,
      isVendorVerified,
      wallet,
      userType,
      referralCode,
      const DeepCollectionEquality().hash(referredBy),
      const DeepCollectionEquality().hash(_dummyImage),
      createdAt,
      updatedAt,
      retailShop);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: '_id') required final String id,
      required final String userName,
      required final String mobileNumber,
      required final String email,
      required final String password,
      required final String otp,
      required final bool isVerified,
      required final bool isVendorVerified,
      required final int wallet,
      required final String userType,
      required final String referralCode,
      required final dynamic referredBy,
      final List<dynamic> dummyImage,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final bool? retailShop}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get userName;
  @override
  String get mobileNumber;
  @override
  String get email;
  @override
  String get password;
  @override
  String get otp;
  @override
  bool get isVerified;
  @override
  bool get isVendorVerified;
  @override
  int get wallet;
  @override
  String get userType;
  @override
  String get referralCode;
  @override
  dynamic get referredBy;
  @override
  List<dynamic> get dummyImage;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool? get retailShop;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
