// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatusTearOff {
  const _$StatusTearOff();

  LoadingStatus loading() {
    return const LoadingStatus();
  }

  IddleStatus iddle() {
    return const IddleStatus();
  }

  SuccessStatus success() {
    return const SuccessStatus();
  }

  ErrorStatus error(String message) {
    return ErrorStatus(
      message,
    );
  }
}

/// @nodoc
const $Status = _$StatusTearOff();

/// @nodoc
mixin _$Status {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() iddle,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? iddle,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(IddleStatus value) iddle,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStatus value)? loading,
    TResult Function(IddleStatus value)? iddle,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;
}

/// @nodoc
abstract class $LoadingStatusCopyWith<$Res> {
  factory $LoadingStatusCopyWith(
          LoadingStatus value, $Res Function(LoadingStatus) then) =
      _$LoadingStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements $LoadingStatusCopyWith<$Res> {
  _$LoadingStatusCopyWithImpl(
      LoadingStatus _value, $Res Function(LoadingStatus) _then)
      : super(_value, (v) => _then(v as LoadingStatus));

  @override
  LoadingStatus get _value => super._value as LoadingStatus;
}

/// @nodoc

class _$LoadingStatus implements LoadingStatus {
  const _$LoadingStatus();

  @override
  String toString() {
    return 'Status.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() iddle,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? iddle,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(IddleStatus value) iddle,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStatus value)? loading,
    TResult Function(IddleStatus value)? iddle,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingStatus implements Status {
  const factory LoadingStatus() = _$LoadingStatus;
}

/// @nodoc
abstract class $IddleStatusCopyWith<$Res> {
  factory $IddleStatusCopyWith(
          IddleStatus value, $Res Function(IddleStatus) then) =
      _$IddleStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$IddleStatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements $IddleStatusCopyWith<$Res> {
  _$IddleStatusCopyWithImpl(
      IddleStatus _value, $Res Function(IddleStatus) _then)
      : super(_value, (v) => _then(v as IddleStatus));

  @override
  IddleStatus get _value => super._value as IddleStatus;
}

/// @nodoc

class _$IddleStatus implements IddleStatus {
  const _$IddleStatus();

  @override
  String toString() {
    return 'Status.iddle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IddleStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() iddle,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return iddle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? iddle,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (iddle != null) {
      return iddle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(IddleStatus value) iddle,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) {
    return iddle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStatus value)? loading,
    TResult Function(IddleStatus value)? iddle,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) {
    if (iddle != null) {
      return iddle(this);
    }
    return orElse();
  }
}

abstract class IddleStatus implements Status {
  const factory IddleStatus() = _$IddleStatus;
}

/// @nodoc
abstract class $SuccessStatusCopyWith<$Res> {
  factory $SuccessStatusCopyWith(
          SuccessStatus value, $Res Function(SuccessStatus) then) =
      _$SuccessStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessStatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements $SuccessStatusCopyWith<$Res> {
  _$SuccessStatusCopyWithImpl(
      SuccessStatus _value, $Res Function(SuccessStatus) _then)
      : super(_value, (v) => _then(v as SuccessStatus));

  @override
  SuccessStatus get _value => super._value as SuccessStatus;
}

/// @nodoc

class _$SuccessStatus implements SuccessStatus {
  const _$SuccessStatus();

  @override
  String toString() {
    return 'Status.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() iddle,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? iddle,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(IddleStatus value) iddle,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStatus value)? loading,
    TResult Function(IddleStatus value)? iddle,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessStatus implements Status {
  const factory SuccessStatus() = _$SuccessStatus;
}

/// @nodoc
abstract class $ErrorStatusCopyWith<$Res> {
  factory $ErrorStatusCopyWith(
          ErrorStatus value, $Res Function(ErrorStatus) then) =
      _$ErrorStatusCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorStatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements $ErrorStatusCopyWith<$Res> {
  _$ErrorStatusCopyWithImpl(
      ErrorStatus _value, $Res Function(ErrorStatus) _then)
      : super(_value, (v) => _then(v as ErrorStatus));

  @override
  ErrorStatus get _value => super._value as ErrorStatus;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorStatus(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStatus implements ErrorStatus {
  const _$ErrorStatus(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Status.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorStatus &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorStatusCopyWith<ErrorStatus> get copyWith =>
      _$ErrorStatusCopyWithImpl<ErrorStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() iddle,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? iddle,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingStatus value) loading,
    required TResult Function(IddleStatus value) iddle,
    required TResult Function(SuccessStatus value) success,
    required TResult Function(ErrorStatus value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingStatus value)? loading,
    TResult Function(IddleStatus value)? iddle,
    TResult Function(SuccessStatus value)? success,
    TResult Function(ErrorStatus value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorStatus implements Status {
  const factory ErrorStatus(String message) = _$ErrorStatus;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorStatusCopyWith<ErrorStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
