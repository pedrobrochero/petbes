// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
class _$ChatMessageTearOff {
  const _$ChatMessageTearOff();

  _ChatMessage call(
      {required String id,
      required String content,
      required String senderId,
      required String receiverId,
      required DateTime sentAt}) {
    return _ChatMessage(
      id: id,
      content: content,
      senderId: senderId,
      receiverId: receiverId,
      sentAt: sentAt,
    );
  }

  ChatMessage fromJson(Map<String, Object> json) {
    return ChatMessage.fromJson(json);
  }
}

/// @nodoc
const $ChatMessage = _$ChatMessageTearOff();

/// @nodoc
mixin _$ChatMessage {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String content,
      String senderId,
      String receiverId,
      DateTime sentAt});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res> implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  final ChatMessage _value;
  // ignore: unused_field
  final $Res Function(ChatMessage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? sentAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(
          _ChatMessage value, $Res Function(_ChatMessage) then) =
      __$ChatMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String content,
      String senderId,
      String receiverId,
      DateTime sentAt});
}

/// @nodoc
class __$ChatMessageCopyWithImpl<$Res> extends _$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(
      _ChatMessage _value, $Res Function(_ChatMessage) _then)
      : super(_value, (v) => _then(v as _ChatMessage));

  @override
  _ChatMessage get _value => super._value as _ChatMessage;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? sentAt = freezed,
  }) {
    return _then(_ChatMessage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: receiverId == freezed
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessage implements _ChatMessage {
  const _$_ChatMessage(
      {required this.id,
      required this.content,
      required this.senderId,
      required this.receiverId,
      required this.sentAt});

  factory _$_ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatMessageFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final String senderId;
  @override
  final String receiverId;
  @override
  final DateTime sentAt;

  @override
  String toString() {
    return 'ChatMessage(id: $id, content: $content, senderId: $senderId, receiverId: $receiverId, sentAt: $sentAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatMessage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.sentAt, sentAt) ||
                const DeepCollectionEquality().equals(other.sentAt, sentAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(sentAt);

  @JsonKey(ignore: true)
  @override
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatMessageToJson(this);
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required String id,
      required String content,
      required String senderId,
      required String receiverId,
      required DateTime sentAt}) = _$_ChatMessage;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatMessage.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  String get senderId => throw _privateConstructorUsedError;
  @override
  String get receiverId => throw _privateConstructorUsedError;
  @override
  DateTime get sentAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
