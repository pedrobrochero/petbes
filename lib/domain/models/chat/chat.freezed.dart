// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {required String id,
      required String senderName,
      String? senderPicture,
      String? lastMessage}) {
    return _Chat(
      id: id,
      senderName: senderName,
      senderPicture: senderPicture,
      lastMessage: lastMessage,
    );
  }

  Chat fromJson(Map<String, Object> json) {
    return Chat.fromJson(json);
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  String get id => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;
  String? get senderPicture => throw _privateConstructorUsedError;
  String? get lastMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String senderName,
      String? senderPicture,
      String? lastMessage});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? senderName = freezed,
    Object? senderPicture = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: senderName == freezed
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderPicture: senderPicture == freezed
          ? _value.senderPicture
          : senderPicture // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String senderName,
      String? senderPicture,
      String? lastMessage});
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? id = freezed,
    Object? senderName = freezed,
    Object? senderPicture = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_Chat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: senderName == freezed
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderPicture: senderPicture == freezed
          ? _value.senderPicture
          : senderPicture // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.id,
      required this.senderName,
      this.senderPicture,
      this.lastMessage});

  factory _$_Chat.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatFromJson(json);

  @override
  final String id;
  @override
  final String senderName;
  @override
  final String? senderPicture;
  @override
  final String? lastMessage;

  @override
  String toString() {
    return 'Chat(id: $id, senderName: $senderName, senderPicture: $senderPicture, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Chat &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.senderName, senderName) ||
                const DeepCollectionEquality()
                    .equals(other.senderName, senderName)) &&
            (identical(other.senderPicture, senderPicture) ||
                const DeepCollectionEquality()
                    .equals(other.senderPicture, senderPicture)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(senderName) ^
      const DeepCollectionEquality().hash(senderPicture) ^
      const DeepCollectionEquality().hash(lastMessage);

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatToJson(this);
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required String id,
      required String senderName,
      String? senderPicture,
      String? lastMessage}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get senderName => throw _privateConstructorUsedError;
  @override
  String? get senderPicture => throw _privateConstructorUsedError;
  @override
  String? get lastMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}
