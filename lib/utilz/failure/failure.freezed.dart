// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) validationError,
    required TResult Function() socketError,
    required TResult Function() someThingWentWrong,
    required TResult Function() badResponse,
    required TResult Function() hiveError,
    required TResult Function() entityTooLargeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? validationError,
    TResult? Function()? socketError,
    TResult? Function()? someThingWentWrong,
    TResult? Function()? badResponse,
    TResult? Function()? hiveError,
    TResult? Function()? entityTooLargeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? validationError,
    TResult Function()? socketError,
    TResult Function()? someThingWentWrong,
    TResult Function()? badResponse,
    TResult Function()? hiveError,
    TResult Function()? entityTooLargeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SocketError value) socketError,
    required TResult Function(SomeThingWentWrong value) someThingWentWrong,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(HiveExceptionError value) hiveError,
    required TResult Function(EntityTooLargeError value) entityTooLargeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(SocketError value)? socketError,
    TResult? Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(HiveExceptionError value)? hiveError,
    TResult? Function(EntityTooLargeError value)? entityTooLargeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidationError value)? validationError,
    TResult Function(SocketError value)? socketError,
    TResult Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(HiveExceptionError value)? hiveError,
    TResult Function(EntityTooLargeError value)? entityTooLargeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ValidationErrorImplCopyWith<$Res> {
  factory _$$ValidationErrorImplCopyWith(_$ValidationErrorImpl value,
          $Res Function(_$ValidationErrorImpl) then) =
      __$$ValidationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ValidationErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationErrorImpl>
    implements _$$ValidationErrorImplCopyWith<$Res> {
  __$$ValidationErrorImplCopyWithImpl(
      _$ValidationErrorImpl _value, $Res Function(_$ValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ValidationErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidationErrorImpl implements ValidationError {
  const _$ValidationErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.validationError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      __$$ValidationErrorImplCopyWithImpl<_$ValidationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) validationError,
    required TResult Function() socketError,
    required TResult Function() someThingWentWrong,
    required TResult Function() badResponse,
    required TResult Function() hiveError,
    required TResult Function() entityTooLargeError,
  }) {
    return validationError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? validationError,
    TResult? Function()? socketError,
    TResult? Function()? someThingWentWrong,
    TResult? Function()? badResponse,
    TResult? Function()? hiveError,
    TResult? Function()? entityTooLargeError,
  }) {
    return validationError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? validationError,
    TResult Function()? socketError,
    TResult Function()? someThingWentWrong,
    TResult Function()? badResponse,
    TResult Function()? hiveError,
    TResult Function()? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SocketError value) socketError,
    required TResult Function(SomeThingWentWrong value) someThingWentWrong,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(HiveExceptionError value) hiveError,
    required TResult Function(EntityTooLargeError value) entityTooLargeError,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(SocketError value)? socketError,
    TResult? Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(HiveExceptionError value)? hiveError,
    TResult? Function(EntityTooLargeError value)? entityTooLargeError,
  }) {
    return validationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidationError value)? validationError,
    TResult Function(SocketError value)? socketError,
    TResult Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(HiveExceptionError value)? hiveError,
    TResult Function(EntityTooLargeError value)? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class ValidationError implements Failure {
  const factory ValidationError(final String message) = _$ValidationErrorImpl;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketErrorImplCopyWith<$Res> {
  factory _$$SocketErrorImplCopyWith(
          _$SocketErrorImpl value, $Res Function(_$SocketErrorImpl) then) =
      __$$SocketErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SocketErrorImpl>
    implements _$$SocketErrorImplCopyWith<$Res> {
  __$$SocketErrorImplCopyWithImpl(
      _$SocketErrorImpl _value, $Res Function(_$SocketErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SocketErrorImpl implements SocketError {
  const _$SocketErrorImpl();

  @override
  String toString() {
    return 'Failure.socketError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SocketErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) validationError,
    required TResult Function() socketError,
    required TResult Function() someThingWentWrong,
    required TResult Function() badResponse,
    required TResult Function() hiveError,
    required TResult Function() entityTooLargeError,
  }) {
    return socketError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? validationError,
    TResult? Function()? socketError,
    TResult? Function()? someThingWentWrong,
    TResult? Function()? badResponse,
    TResult? Function()? hiveError,
    TResult? Function()? entityTooLargeError,
  }) {
    return socketError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? validationError,
    TResult Function()? socketError,
    TResult Function()? someThingWentWrong,
    TResult Function()? badResponse,
    TResult Function()? hiveError,
    TResult Function()? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (socketError != null) {
      return socketError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SocketError value) socketError,
    required TResult Function(SomeThingWentWrong value) someThingWentWrong,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(HiveExceptionError value) hiveError,
    required TResult Function(EntityTooLargeError value) entityTooLargeError,
  }) {
    return socketError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(SocketError value)? socketError,
    TResult? Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(HiveExceptionError value)? hiveError,
    TResult? Function(EntityTooLargeError value)? entityTooLargeError,
  }) {
    return socketError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidationError value)? validationError,
    TResult Function(SocketError value)? socketError,
    TResult Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(HiveExceptionError value)? hiveError,
    TResult Function(EntityTooLargeError value)? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (socketError != null) {
      return socketError(this);
    }
    return orElse();
  }
}

abstract class SocketError implements Failure {
  const factory SocketError() = _$SocketErrorImpl;
}

/// @nodoc
abstract class _$$SomeThingWentWrongImplCopyWith<$Res> {
  factory _$$SomeThingWentWrongImplCopyWith(_$SomeThingWentWrongImpl value,
          $Res Function(_$SomeThingWentWrongImpl) then) =
      __$$SomeThingWentWrongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SomeThingWentWrongImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SomeThingWentWrongImpl>
    implements _$$SomeThingWentWrongImplCopyWith<$Res> {
  __$$SomeThingWentWrongImplCopyWithImpl(_$SomeThingWentWrongImpl _value,
      $Res Function(_$SomeThingWentWrongImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SomeThingWentWrongImpl implements SomeThingWentWrong {
  const _$SomeThingWentWrongImpl();

  @override
  String toString() {
    return 'Failure.someThingWentWrong()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SomeThingWentWrongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) validationError,
    required TResult Function() socketError,
    required TResult Function() someThingWentWrong,
    required TResult Function() badResponse,
    required TResult Function() hiveError,
    required TResult Function() entityTooLargeError,
  }) {
    return someThingWentWrong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? validationError,
    TResult? Function()? socketError,
    TResult? Function()? someThingWentWrong,
    TResult? Function()? badResponse,
    TResult? Function()? hiveError,
    TResult? Function()? entityTooLargeError,
  }) {
    return someThingWentWrong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? validationError,
    TResult Function()? socketError,
    TResult Function()? someThingWentWrong,
    TResult Function()? badResponse,
    TResult Function()? hiveError,
    TResult Function()? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (someThingWentWrong != null) {
      return someThingWentWrong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SocketError value) socketError,
    required TResult Function(SomeThingWentWrong value) someThingWentWrong,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(HiveExceptionError value) hiveError,
    required TResult Function(EntityTooLargeError value) entityTooLargeError,
  }) {
    return someThingWentWrong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(SocketError value)? socketError,
    TResult? Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(HiveExceptionError value)? hiveError,
    TResult? Function(EntityTooLargeError value)? entityTooLargeError,
  }) {
    return someThingWentWrong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidationError value)? validationError,
    TResult Function(SocketError value)? socketError,
    TResult Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(HiveExceptionError value)? hiveError,
    TResult Function(EntityTooLargeError value)? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (someThingWentWrong != null) {
      return someThingWentWrong(this);
    }
    return orElse();
  }
}

abstract class SomeThingWentWrong implements Failure {
  const factory SomeThingWentWrong() = _$SomeThingWentWrongImpl;
}

/// @nodoc
abstract class _$$BadResponseImplCopyWith<$Res> {
  factory _$$BadResponseImplCopyWith(
          _$BadResponseImpl value, $Res Function(_$BadResponseImpl) then) =
      __$$BadResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadResponseImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BadResponseImpl>
    implements _$$BadResponseImplCopyWith<$Res> {
  __$$BadResponseImplCopyWithImpl(
      _$BadResponseImpl _value, $Res Function(_$BadResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BadResponseImpl implements BadResponse {
  const _$BadResponseImpl();

  @override
  String toString() {
    return 'Failure.badResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadResponseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) validationError,
    required TResult Function() socketError,
    required TResult Function() someThingWentWrong,
    required TResult Function() badResponse,
    required TResult Function() hiveError,
    required TResult Function() entityTooLargeError,
  }) {
    return badResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? validationError,
    TResult? Function()? socketError,
    TResult? Function()? someThingWentWrong,
    TResult? Function()? badResponse,
    TResult? Function()? hiveError,
    TResult? Function()? entityTooLargeError,
  }) {
    return badResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? validationError,
    TResult Function()? socketError,
    TResult Function()? someThingWentWrong,
    TResult Function()? badResponse,
    TResult Function()? hiveError,
    TResult Function()? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SocketError value) socketError,
    required TResult Function(SomeThingWentWrong value) someThingWentWrong,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(HiveExceptionError value) hiveError,
    required TResult Function(EntityTooLargeError value) entityTooLargeError,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(SocketError value)? socketError,
    TResult? Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(HiveExceptionError value)? hiveError,
    TResult? Function(EntityTooLargeError value)? entityTooLargeError,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidationError value)? validationError,
    TResult Function(SocketError value)? socketError,
    TResult Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(HiveExceptionError value)? hiveError,
    TResult Function(EntityTooLargeError value)? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class BadResponse implements Failure {
  const factory BadResponse() = _$BadResponseImpl;
}

/// @nodoc
abstract class _$$HiveExceptionErrorImplCopyWith<$Res> {
  factory _$$HiveExceptionErrorImplCopyWith(_$HiveExceptionErrorImpl value,
          $Res Function(_$HiveExceptionErrorImpl) then) =
      __$$HiveExceptionErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HiveExceptionErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$HiveExceptionErrorImpl>
    implements _$$HiveExceptionErrorImplCopyWith<$Res> {
  __$$HiveExceptionErrorImplCopyWithImpl(_$HiveExceptionErrorImpl _value,
      $Res Function(_$HiveExceptionErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HiveExceptionErrorImpl implements HiveExceptionError {
  const _$HiveExceptionErrorImpl();

  @override
  String toString() {
    return 'Failure.hiveError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HiveExceptionErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) validationError,
    required TResult Function() socketError,
    required TResult Function() someThingWentWrong,
    required TResult Function() badResponse,
    required TResult Function() hiveError,
    required TResult Function() entityTooLargeError,
  }) {
    return hiveError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? validationError,
    TResult? Function()? socketError,
    TResult? Function()? someThingWentWrong,
    TResult? Function()? badResponse,
    TResult? Function()? hiveError,
    TResult? Function()? entityTooLargeError,
  }) {
    return hiveError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? validationError,
    TResult Function()? socketError,
    TResult Function()? someThingWentWrong,
    TResult Function()? badResponse,
    TResult Function()? hiveError,
    TResult Function()? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (hiveError != null) {
      return hiveError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SocketError value) socketError,
    required TResult Function(SomeThingWentWrong value) someThingWentWrong,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(HiveExceptionError value) hiveError,
    required TResult Function(EntityTooLargeError value) entityTooLargeError,
  }) {
    return hiveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(SocketError value)? socketError,
    TResult? Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(HiveExceptionError value)? hiveError,
    TResult? Function(EntityTooLargeError value)? entityTooLargeError,
  }) {
    return hiveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidationError value)? validationError,
    TResult Function(SocketError value)? socketError,
    TResult Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(HiveExceptionError value)? hiveError,
    TResult Function(EntityTooLargeError value)? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (hiveError != null) {
      return hiveError(this);
    }
    return orElse();
  }
}

abstract class HiveExceptionError implements Failure {
  const factory HiveExceptionError() = _$HiveExceptionErrorImpl;
}

/// @nodoc
abstract class _$$EntityTooLargeErrorImplCopyWith<$Res> {
  factory _$$EntityTooLargeErrorImplCopyWith(_$EntityTooLargeErrorImpl value,
          $Res Function(_$EntityTooLargeErrorImpl) then) =
      __$$EntityTooLargeErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EntityTooLargeErrorImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$EntityTooLargeErrorImpl>
    implements _$$EntityTooLargeErrorImplCopyWith<$Res> {
  __$$EntityTooLargeErrorImplCopyWithImpl(_$EntityTooLargeErrorImpl _value,
      $Res Function(_$EntityTooLargeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EntityTooLargeErrorImpl implements EntityTooLargeError {
  const _$EntityTooLargeErrorImpl();

  @override
  String toString() {
    return 'Failure.entityTooLargeError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityTooLargeErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) validationError,
    required TResult Function() socketError,
    required TResult Function() someThingWentWrong,
    required TResult Function() badResponse,
    required TResult Function() hiveError,
    required TResult Function() entityTooLargeError,
  }) {
    return entityTooLargeError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? validationError,
    TResult? Function()? socketError,
    TResult? Function()? someThingWentWrong,
    TResult? Function()? badResponse,
    TResult? Function()? hiveError,
    TResult? Function()? entityTooLargeError,
  }) {
    return entityTooLargeError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? validationError,
    TResult Function()? socketError,
    TResult Function()? someThingWentWrong,
    TResult Function()? badResponse,
    TResult Function()? hiveError,
    TResult Function()? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (entityTooLargeError != null) {
      return entityTooLargeError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidationError value) validationError,
    required TResult Function(SocketError value) socketError,
    required TResult Function(SomeThingWentWrong value) someThingWentWrong,
    required TResult Function(BadResponse value) badResponse,
    required TResult Function(HiveExceptionError value) hiveError,
    required TResult Function(EntityTooLargeError value) entityTooLargeError,
  }) {
    return entityTooLargeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidationError value)? validationError,
    TResult? Function(SocketError value)? socketError,
    TResult? Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult? Function(BadResponse value)? badResponse,
    TResult? Function(HiveExceptionError value)? hiveError,
    TResult? Function(EntityTooLargeError value)? entityTooLargeError,
  }) {
    return entityTooLargeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidationError value)? validationError,
    TResult Function(SocketError value)? socketError,
    TResult Function(SomeThingWentWrong value)? someThingWentWrong,
    TResult Function(BadResponse value)? badResponse,
    TResult Function(HiveExceptionError value)? hiveError,
    TResult Function(EntityTooLargeError value)? entityTooLargeError,
    required TResult orElse(),
  }) {
    if (entityTooLargeError != null) {
      return entityTooLargeError(this);
    }
    return orElse();
  }
}

abstract class EntityTooLargeError implements Failure {
  const factory EntityTooLargeError() = _$EntityTooLargeErrorImpl;
}
