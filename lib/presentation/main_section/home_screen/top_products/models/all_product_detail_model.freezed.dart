// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_product_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllProductDetailModel _$AllProductDetailModelFromJson(
    Map<String, dynamic> json) {
  return _AllProductDetailModel.fromJson(json);
}

/// @nodoc
mixin _$AllProductDetailModel {
  List<Datum> get data => throw _privateConstructorUsedError;

  /// Serializes this AllProductDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllProductDetailModelCopyWith<AllProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductDetailModelCopyWith<$Res> {
  factory $AllProductDetailModelCopyWith(AllProductDetailModel value,
          $Res Function(AllProductDetailModel) then) =
      _$AllProductDetailModelCopyWithImpl<$Res, AllProductDetailModel>;
  @useResult
  $Res call({List<Datum> data});
}

/// @nodoc
class _$AllProductDetailModelCopyWithImpl<$Res,
        $Val extends AllProductDetailModel>
    implements $AllProductDetailModelCopyWith<$Res> {
  _$AllProductDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllProductDetailModel
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
              as List<Datum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllProductDetailModelImplCopyWith<$Res>
    implements $AllProductDetailModelCopyWith<$Res> {
  factory _$$AllProductDetailModelImplCopyWith(
          _$AllProductDetailModelImpl value,
          $Res Function(_$AllProductDetailModelImpl) then) =
      __$$AllProductDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum> data});
}

/// @nodoc
class __$$AllProductDetailModelImplCopyWithImpl<$Res>
    extends _$AllProductDetailModelCopyWithImpl<$Res,
        _$AllProductDetailModelImpl>
    implements _$$AllProductDetailModelImplCopyWith<$Res> {
  __$$AllProductDetailModelImplCopyWithImpl(_$AllProductDetailModelImpl _value,
      $Res Function(_$AllProductDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AllProductDetailModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllProductDetailModelImpl implements _AllProductDetailModel {
  const _$AllProductDetailModelImpl({required final List<Datum> data})
      : _data = data;

  factory _$AllProductDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllProductDetailModelImplFromJson(json);

  final List<Datum> _data;
  @override
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AllProductDetailModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllProductDetailModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AllProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllProductDetailModelImplCopyWith<_$AllProductDetailModelImpl>
      get copyWith => __$$AllProductDetailModelImplCopyWithImpl<
          _$AllProductDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllProductDetailModelImplToJson(
      this,
    );
  }
}

abstract class _AllProductDetailModel implements AllProductDetailModel {
  const factory _AllProductDetailModel({required final List<Datum> data}) =
      _$AllProductDetailModelImpl;

  factory _AllProductDetailModel.fromJson(Map<String, dynamic> json) =
      _$AllProductDetailModelImpl.fromJson;

  @override
  List<Datum> get data;

  /// Create a copy of AllProductDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllProductDetailModelImplCopyWith<_$AllProductDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Image> get image => throw _privateConstructorUsedError;
  int get originalPrice => throw _privateConstructorUsedError;
  double get discountPrice => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  bool get discountActive => throw _privateConstructorUsedError;
  String get mainCategory => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get subCategoryId => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get numOfReviews => throw _privateConstructorUsedError;
  List<String> get size => throw _privateConstructorUsedError;
  List<String> get color => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  bool get isProductVerified => throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool get isDeal => throw _privateConstructorUsedError;

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String vendorId,
      String productName,
      String description,
      List<Image> image,
      int originalPrice,
      double discountPrice,
      int discount,
      bool discountActive,
      String mainCategory,
      String categoryId,
      String subCategoryId,
      double rating,
      int numOfReviews,
      List<String> size,
      List<String> color,
      int stock,
      bool status,
      bool isProductVerified,
      List<Review> reviews,
      DateTime createdAt,
      DateTime updatedAt,
      bool isDeal});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorId = null,
    Object? productName = null,
    Object? description = null,
    Object? image = null,
    Object? originalPrice = null,
    Object? discountPrice = null,
    Object? discount = null,
    Object? discountActive = null,
    Object? mainCategory = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? rating = null,
    Object? numOfReviews = null,
    Object? size = null,
    Object? color = null,
    Object? stock = null,
    Object? status = null,
    Object? isProductVerified = null,
    Object? reviews = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      discountActive: null == discountActive
          ? _value.discountActive
          : discountActive // ignore: cast_nullable_to_non_nullable
              as bool,
      mainCategory: null == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      numOfReviews: null == numOfReviews
          ? _value.numOfReviews
          : numOfReviews // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<String>,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductVerified: null == isProductVerified
          ? _value.isProductVerified
          : isProductVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeal: null == isDeal
          ? _value.isDeal
          : isDeal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String vendorId,
      String productName,
      String description,
      List<Image> image,
      int originalPrice,
      double discountPrice,
      int discount,
      bool discountActive,
      String mainCategory,
      String categoryId,
      String subCategoryId,
      double rating,
      int numOfReviews,
      List<String> size,
      List<String> color,
      int stock,
      bool status,
      bool isProductVerified,
      List<Review> reviews,
      DateTime createdAt,
      DateTime updatedAt,
      bool isDeal});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorId = null,
    Object? productName = null,
    Object? description = null,
    Object? image = null,
    Object? originalPrice = null,
    Object? discountPrice = null,
    Object? discount = null,
    Object? discountActive = null,
    Object? mainCategory = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? rating = null,
    Object? numOfReviews = null,
    Object? size = null,
    Object? color = null,
    Object? stock = null,
    Object? status = null,
    Object? isProductVerified = null,
    Object? reviews = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeal = null,
  }) {
    return _then(_$DatumImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      discountActive: null == discountActive
          ? _value.discountActive
          : discountActive // ignore: cast_nullable_to_non_nullable
              as bool,
      mainCategory: null == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      numOfReviews: null == numOfReviews
          ? _value.numOfReviews
          : numOfReviews // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<String>,
      color: null == color
          ? _value._color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductVerified: null == isProductVerified
          ? _value.isProductVerified
          : isProductVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeal: null == isDeal
          ? _value.isDeal
          : isDeal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.vendorId,
      required this.productName,
      required this.description,
      required final List<Image> image,
      required this.originalPrice,
      required this.discountPrice,
      required this.discount,
      required this.discountActive,
      required this.mainCategory,
      required this.categoryId,
      required this.subCategoryId,
      required this.rating,
      required this.numOfReviews,
      required final List<String> size,
      required final List<String> color,
      required this.stock,
      required this.status,
      required this.isProductVerified,
      required final List<Review> reviews,
      required this.createdAt,
      required this.updatedAt,
      required this.isDeal})
      : _image = image,
        _size = size,
        _color = color,
        _reviews = reviews;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String vendorId;
  @override
  final String productName;
  @override
  final String description;
  final List<Image> _image;
  @override
  List<Image> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  final int originalPrice;
  @override
  final double discountPrice;
  @override
  final int discount;
  @override
  final bool discountActive;
  @override
  final String mainCategory;
  @override
  final String categoryId;
  @override
  final String subCategoryId;
  @override
  final double rating;
  @override
  final int numOfReviews;
  final List<String> _size;
  @override
  List<String> get size {
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_size);
  }

  final List<String> _color;
  @override
  List<String> get color {
    if (_color is EqualUnmodifiableListView) return _color;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_color);
  }

  @override
  final int stock;
  @override
  final bool status;
  @override
  final bool isProductVerified;
  final List<Review> _reviews;
  @override
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool isDeal;

  @override
  String toString() {
    return 'Datum(id: $id, vendorId: $vendorId, productName: $productName, description: $description, image: $image, originalPrice: $originalPrice, discountPrice: $discountPrice, discount: $discount, discountActive: $discountActive, mainCategory: $mainCategory, categoryId: $categoryId, subCategoryId: $subCategoryId, rating: $rating, numOfReviews: $numOfReviews, size: $size, color: $color, stock: $stock, status: $status, isProductVerified: $isProductVerified, reviews: $reviews, createdAt: $createdAt, updatedAt: $updatedAt, isDeal: $isDeal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountActive, discountActive) ||
                other.discountActive == discountActive) &&
            (identical(other.mainCategory, mainCategory) ||
                other.mainCategory == mainCategory) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.numOfReviews, numOfReviews) ||
                other.numOfReviews == numOfReviews) &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            const DeepCollectionEquality().equals(other._color, _color) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isProductVerified, isProductVerified) ||
                other.isProductVerified == isProductVerified) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isDeal, isDeal) || other.isDeal == isDeal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        vendorId,
        productName,
        description,
        const DeepCollectionEquality().hash(_image),
        originalPrice,
        discountPrice,
        discount,
        discountActive,
        mainCategory,
        categoryId,
        subCategoryId,
        rating,
        numOfReviews,
        const DeepCollectionEquality().hash(_size),
        const DeepCollectionEquality().hash(_color),
        stock,
        status,
        isProductVerified,
        const DeepCollectionEquality().hash(_reviews),
        createdAt,
        updatedAt,
        isDeal
      ]);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: '_id') required final String id,
      required final String vendorId,
      required final String productName,
      required final String description,
      required final List<Image> image,
      required final int originalPrice,
      required final double discountPrice,
      required final int discount,
      required final bool discountActive,
      required final String mainCategory,
      required final String categoryId,
      required final String subCategoryId,
      required final double rating,
      required final int numOfReviews,
      required final List<String> size,
      required final List<String> color,
      required final int stock,
      required final bool status,
      required final bool isProductVerified,
      required final List<Review> reviews,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final bool isDeal}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get vendorId;
  @override
  String get productName;
  @override
  String get description;
  @override
  List<Image> get image;
  @override
  int get originalPrice;
  @override
  double get discountPrice;
  @override
  int get discount;
  @override
  bool get discountActive;
  @override
  String get mainCategory;
  @override
  String get categoryId;
  @override
  String get subCategoryId;
  @override
  double get rating;
  @override
  int get numOfReviews;
  @override
  List<String> get size;
  @override
  List<String> get color;
  @override
  int get stock;
  @override
  bool get status;
  @override
  bool get isProductVerified;
  @override
  List<Review> get reviews;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool get isDeal;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
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

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String get user => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String user,
      String name,
      int rating,
      String comment,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? name = null,
    Object? rating = null,
    Object? comment = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String user,
      String name,
      int rating,
      String comment,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? name = null,
    Object? rating = null,
    Object? comment = null,
    Object? id = null,
  }) {
    return _then(_$ReviewImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {required this.user,
      required this.name,
      required this.rating,
      required this.comment,
      @JsonKey(name: '_id') required this.id});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final String user;
  @override
  final String name;
  @override
  final int rating;
  @override
  final String comment;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'Review(user: $user, name: $name, rating: $rating, comment: $comment, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, name, rating, comment, id);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final String user,
      required final String name,
      required final int rating,
      required final String comment,
      @JsonKey(name: '_id') required final String id}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  String get user;
  @override
  String get name;
  @override
  int get rating;
  @override
  String get comment;
  @override
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
