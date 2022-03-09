// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'http_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HttpExceptionTearOff {
  const _$HttpExceptionTearOff();

  _Error error({int? errorCode, String? errorDescription}) {
    return _Error(
      errorCode: errorCode,
      errorDescription: errorDescription,
    );
  }

  _NoInfo noInfo({String? message}) {
    return _NoInfo(
      message: message,
    );
  }
}

/// @nodoc
const $HttpException = _$HttpExceptionTearOff();

/// @nodoc
mixin _$HttpException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? errorDescription) error,
    required TResult Function(String? message) noInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? errorDescription)? error,
    TResult Function(String? message)? noInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? errorDescription)? error,
    TResult Function(String? message)? noInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_NoInfo value) noInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_NoInfo value)? noInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpExceptionCopyWith<$Res> {
  factory $HttpExceptionCopyWith(
          HttpException value, $Res Function(HttpException) then) =
      _$HttpExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$HttpExceptionCopyWithImpl<$Res>
    implements $HttpExceptionCopyWith<$Res> {
  _$HttpExceptionCopyWithImpl(this._value, this._then);

  final HttpException _value;
  // ignore: unused_field
  final $Res Function(HttpException) _then;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({int? errorCode, String? errorDescription});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HttpExceptionCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_Error(
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      errorDescription: errorDescription == freezed
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.errorCode, this.errorDescription});

  @override
  final int? errorCode;
  @override
  final String? errorDescription;

  @override
  String toString() {
    return 'HttpException.error(errorCode: $errorCode, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality()
                .equals(other.errorDescription, errorDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(errorDescription));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? errorDescription) error,
    required TResult Function(String? message) noInfo,
  }) {
    return error(errorCode, errorDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? errorDescription)? error,
    TResult Function(String? message)? noInfo,
  }) {
    return error?.call(errorCode, errorDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? errorDescription)? error,
    TResult Function(String? message)? noInfo,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorCode, errorDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_NoInfo value) noInfo,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_NoInfo value)? noInfo,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HttpException {
  const factory _Error({int? errorCode, String? errorDescription}) = _$_Error;

  int? get errorCode;
  String? get errorDescription;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoInfoCopyWith<$Res> {
  factory _$NoInfoCopyWith(_NoInfo value, $Res Function(_NoInfo) then) =
      __$NoInfoCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$NoInfoCopyWithImpl<$Res> extends _$HttpExceptionCopyWithImpl<$Res>
    implements _$NoInfoCopyWith<$Res> {
  __$NoInfoCopyWithImpl(_NoInfo _value, $Res Function(_NoInfo) _then)
      : super(_value, (v) => _then(v as _NoInfo));

  @override
  _NoInfo get _value => super._value as _NoInfo;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_NoInfo(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NoInfo implements _NoInfo {
  const _$_NoInfo({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'HttpException.noInfo(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoInfo &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$NoInfoCopyWith<_NoInfo> get copyWith =>
      __$NoInfoCopyWithImpl<_NoInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? errorDescription) error,
    required TResult Function(String? message) noInfo,
  }) {
    return noInfo(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? errorDescription)? error,
    TResult Function(String? message)? noInfo,
  }) {
    return noInfo?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? errorDescription)? error,
    TResult Function(String? message)? noInfo,
    required TResult orElse(),
  }) {
    if (noInfo != null) {
      return noInfo(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_NoInfo value) noInfo,
  }) {
    return noInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_NoInfo value)? noInfo,
  }) {
    return noInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_NoInfo value)? noInfo,
    required TResult orElse(),
  }) {
    if (noInfo != null) {
      return noInfo(this);
    }
    return orElse();
  }
}

abstract class _NoInfo implements HttpException {
  const factory _NoInfo({String? message}) = _$_NoInfo;

  String? get message;
  @JsonKey(ignore: true)
  _$NoInfoCopyWith<_NoInfo> get copyWith => throw _privateConstructorUsedError;
}
