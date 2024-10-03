// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllCartModel _$AllCartModelFromJson(Map<String, dynamic> json) {
  return _AllCartModel.fromJson(json);
}

/// @nodoc
mixin _$AllCartModel {
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this AllCartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllCartModelCopyWith<AllCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCartModelCopyWith<$Res> {
  factory $AllCartModelCopyWith(
          AllCartModel value, $Res Function(AllCartModel) then) =
      _$AllCartModelCopyWithImpl<$Res, AllCartModel>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$AllCartModelCopyWithImpl<$Res, $Val extends AllCartModel>
    implements $AllCartModelCopyWith<$Res> {
  _$AllCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllCartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  /// Create a copy of AllCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllCartModelImplCopyWith<$Res>
    implements $AllCartModelCopyWith<$Res> {
  factory _$$AllCartModelImplCopyWith(
          _$AllCartModelImpl value, $Res Function(_$AllCartModelImpl) then) =
      __$$AllCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AllCartModelImplCopyWithImpl<$Res>
    extends _$AllCartModelCopyWithImpl<$Res, _$AllCartModelImpl>
    implements _$$AllCartModelImplCopyWith<$Res> {
  __$$AllCartModelImplCopyWithImpl(
      _$AllCartModelImpl _value, $Res Function(_$AllCartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllCartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AllCartModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllCartModelImpl implements _AllCartModel {
  const _$AllCartModelImpl({required this.data});

  factory _$AllCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllCartModelImplFromJson(json);

  @override
  final Data data;

  @override
  String toString() {
    return 'AllCartModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCartModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AllCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllCartModelImplCopyWith<_$AllCartModelImpl> get copyWith =>
      __$$AllCartModelImplCopyWithImpl<_$AllCartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllCartModelImplToJson(
      this,
    );
  }
}

abstract class _AllCartModel implements AllCartModel {
  const factory _AllCartModel({required final Data data}) = _$AllCartModelImpl;

  factory _AllCartModel.fromJson(Map<String, dynamic> json) =
      _$AllCartModelImpl.fromJson;

  @override
  Data get data;

  /// Create a copy of AllCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllCartModelImplCopyWith<_$AllCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  List<ProductElement> get products => throw _privateConstructorUsedError;
  dynamic get coupon => throw _privateConstructorUsedError;
  bool get walletUsed => throw _privateConstructorUsedError;
  int get shippingPrice => throw _privateConstructorUsedError;
  double get totalPaidAmount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String user,
      List<ProductElement> products,
      dynamic coupon,
      bool walletUsed,
      int shippingPrice,
      double totalPaidAmount,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? products = null,
    Object? coupon = freezed,
    Object? walletUsed = null,
    Object? shippingPrice = null,
    Object? totalPaidAmount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductElement>,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as dynamic,
      walletUsed: null == walletUsed
          ? _value.walletUsed
          : walletUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      shippingPrice: null == shippingPrice
          ? _value.shippingPrice
          : shippingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalPaidAmount: null == totalPaidAmount
          ? _value.totalPaidAmount
          : totalPaidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String user,
      List<ProductElement> products,
      dynamic coupon,
      bool walletUsed,
      int shippingPrice,
      double totalPaidAmount,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? products = null,
    Object? coupon = freezed,
    Object? walletUsed = null,
    Object? shippingPrice = null,
    Object? totalPaidAmount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductElement>,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as dynamic,
      walletUsed: null == walletUsed
          ? _value.walletUsed
          : walletUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      shippingPrice: null == shippingPrice
          ? _value.shippingPrice
          : shippingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalPaidAmount: null == totalPaidAmount
          ? _value.totalPaidAmount
          : totalPaidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.user,
      required final List<ProductElement> products,
      required this.coupon,
      required this.walletUsed,
      required this.shippingPrice,
      required this.totalPaidAmount,
      required this.createdAt,
      required this.updatedAt})
      : _products = products;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String user;
  final List<ProductElement> _products;
  @override
  List<ProductElement> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final dynamic coupon;
  @override
  final bool walletUsed;
  @override
  final int shippingPrice;
  @override
  final double totalPaidAmount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Data(id: $id, user: $user, products: $products, coupon: $coupon, walletUsed: $walletUsed, shippingPrice: $shippingPrice, totalPaidAmount: $totalPaidAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other.coupon, coupon) &&
            (identical(other.walletUsed, walletUsed) ||
                other.walletUsed == walletUsed) &&
            (identical(other.shippingPrice, shippingPrice) ||
                other.shippingPrice == shippingPrice) &&
            (identical(other.totalPaidAmount, totalPaidAmount) ||
                other.totalPaidAmount == totalPaidAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(coupon),
      walletUsed,
      shippingPrice,
      totalPaidAmount,
      createdAt,
      updatedAt);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: '_id') required final String id,
      required final String user,
      required final List<ProductElement> products,
      required final dynamic coupon,
      required final bool walletUsed,
      required final int shippingPrice,
      required final double totalPaidAmount,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get user;
  @override
  List<ProductElement> get products;
  @override
  dynamic get coupon;
  @override
  bool get walletUsed;
  @override
  int get shippingPrice;
  @override
  double get totalPaidAmount;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductElement _$ProductElementFromJson(Map<String, dynamic> json) {
  return _ProductElement.fromJson(json);
}

/// @nodoc
mixin _$ProductElement {
  ProductProduct get product => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this ProductElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductElementCopyWith<ProductElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductElementCopyWith<$Res> {
  factory $ProductElementCopyWith(
          ProductElement value, $Res Function(ProductElement) then) =
      _$ProductElementCopyWithImpl<$Res, ProductElement>;
  @useResult
  $Res call(
      {ProductProduct product,
      String vendorId,
      String size,
      int quantity,
      double price,
      double totalAmount,
      @JsonKey(name: '_id') String id});

  $ProductProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductElementCopyWithImpl<$Res, $Val extends ProductElement>
    implements $ProductElementCopyWith<$Res> {
  _$ProductElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? vendorId = null,
    Object? size = null,
    Object? quantity = null,
    Object? price = null,
    Object? totalAmount = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductProduct,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ProductElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductProductCopyWith<$Res> get product {
    return $ProductProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductElementImplCopyWith<$Res>
    implements $ProductElementCopyWith<$Res> {
  factory _$$ProductElementImplCopyWith(_$ProductElementImpl value,
          $Res Function(_$ProductElementImpl) then) =
      __$$ProductElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductProduct product,
      String vendorId,
      String size,
      int quantity,
      double price,
      double totalAmount,
      @JsonKey(name: '_id') String id});

  @override
  $ProductProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductElementImplCopyWithImpl<$Res>
    extends _$ProductElementCopyWithImpl<$Res, _$ProductElementImpl>
    implements _$$ProductElementImplCopyWith<$Res> {
  __$$ProductElementImplCopyWithImpl(
      _$ProductElementImpl _value, $Res Function(_$ProductElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? vendorId = null,
    Object? size = null,
    Object? quantity = null,
    Object? price = null,
    Object? totalAmount = null,
    Object? id = null,
  }) {
    return _then(_$ProductElementImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductProduct,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductElementImpl implements _ProductElement {
  const _$ProductElementImpl(
      {required this.product,
      required this.vendorId,
      required this.size,
      required this.quantity,
      required this.price,
      required this.totalAmount,
      @JsonKey(name: '_id') required this.id});

  factory _$ProductElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductElementImplFromJson(json);

  @override
  final ProductProduct product;
  @override
  final String vendorId;
  @override
  final String size;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final double totalAmount;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'ProductElement(product: $product, vendorId: $vendorId, size: $size, quantity: $quantity, price: $price, totalAmount: $totalAmount, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductElementImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, product, vendorId, size, quantity, price, totalAmount, id);

  /// Create a copy of ProductElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductElementImplCopyWith<_$ProductElementImpl> get copyWith =>
      __$$ProductElementImplCopyWithImpl<_$ProductElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductElementImplToJson(
      this,
    );
  }
}

abstract class _ProductElement implements ProductElement {
  const factory _ProductElement(
      {required final ProductProduct product,
      required final String vendorId,
      required final String size,
      required final int quantity,
      required final double price,
      required final double totalAmount,
      @JsonKey(name: '_id') required final String id}) = _$ProductElementImpl;

  factory _ProductElement.fromJson(Map<String, dynamic> json) =
      _$ProductElementImpl.fromJson;

  @override
  ProductProduct get product;
  @override
  String get vendorId;
  @override
  String get size;
  @override
  int get quantity;
  @override
  double get price;
  @override
  double get totalAmount;
  @override
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of ProductElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductElementImplCopyWith<_$ProductElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductProduct _$ProductProductFromJson(Map<String, dynamic> json) {
  return _ProductProduct.fromJson(json);
}

/// @nodoc
mixin _$ProductProduct {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  List<Image> get image => throw _privateConstructorUsedError;

  /// Serializes this ProductProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductProductCopyWith<ProductProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductProductCopyWith<$Res> {
  factory $ProductProductCopyWith(
          ProductProduct value, $Res Function(ProductProduct) then) =
      _$ProductProductCopyWithImpl<$Res, ProductProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id, String productName, List<Image> image});
}

/// @nodoc
class _$ProductProductCopyWithImpl<$Res, $Val extends ProductProduct>
    implements $ProductProductCopyWith<$Res> {
  _$ProductProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductProductImplCopyWith<$Res>
    implements $ProductProductCopyWith<$Res> {
  factory _$$ProductProductImplCopyWith(_$ProductProductImpl value,
          $Res Function(_$ProductProductImpl) then) =
      __$$ProductProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id, String productName, List<Image> image});
}

/// @nodoc
class __$$ProductProductImplCopyWithImpl<$Res>
    extends _$ProductProductCopyWithImpl<$Res, _$ProductProductImpl>
    implements _$$ProductProductImplCopyWith<$Res> {
  __$$ProductProductImplCopyWithImpl(
      _$ProductProductImpl _value, $Res Function(_$ProductProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? image = null,
  }) {
    return _then(_$ProductProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductProductImpl implements _ProductProduct {
  const _$ProductProductImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.productName,
      required final List<Image> image})
      : _image = image;

  factory _$ProductProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductProductImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String productName;
  final List<Image> _image;
  @override
  List<Image> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString() {
    return 'ProductProduct(id: $id, productName: $productName, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, productName,
      const DeepCollectionEquality().hash(_image));

  /// Create a copy of ProductProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductProductImplCopyWith<_$ProductProductImpl> get copyWith =>
      __$$ProductProductImplCopyWithImpl<_$ProductProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductProductImplToJson(
      this,
    );
  }
}

abstract class _ProductProduct implements ProductProduct {
  const factory _ProductProduct(
      {@JsonKey(name: '_id') required final String id,
      required final String productName,
      required final List<Image> image}) = _$ProductProductImpl;

  factory _ProductProduct.fromJson(Map<String, dynamic> json) =
      _$ProductProductImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get productName;
  @override
  List<Image> get image;

  /// Create a copy of ProductProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductProductImplCopyWith<_$ProductProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({String url, @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? id = null,
  }) {
    return _then(_$ImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {required this.url, @JsonKey(name: '_id') required this.id});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'Image(url: $url, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, id);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {required final String url,
      @JsonKey(name: '_id') required final String id}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
