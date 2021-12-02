// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
class _$StoryTearOff {
  const _$StoryTearOff();

  _Story call(
      {required String id,
      required String content,
      required String posterId,
      required String posterName,
      required DateTime postedAt}) {
    return _Story(
      id: id,
      content: content,
      posterId: posterId,
      posterName: posterName,
      postedAt: postedAt,
    );
  }

  Story fromJson(Map<String, Object> json) {
    return Story.fromJson(json);
  }
}

/// @nodoc
const $Story = _$StoryTearOff();

/// @nodoc
mixin _$Story {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get posterId => throw _privateConstructorUsedError;
  String get posterName => throw _privateConstructorUsedError;
  DateTime get postedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String content,
      String posterId,
      String posterName,
      DateTime postedAt});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res> implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  final Story _value;
  // ignore: unused_field
  final $Res Function(Story) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? posterId = freezed,
    Object? posterName = freezed,
    Object? postedAt = freezed,
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
      posterId: posterId == freezed
          ? _value.posterId
          : posterId // ignore: cast_nullable_to_non_nullable
              as String,
      posterName: posterName == freezed
          ? _value.posterName
          : posterName // ignore: cast_nullable_to_non_nullable
              as String,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$StoryCopyWith(_Story value, $Res Function(_Story) then) =
      __$StoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String content,
      String posterId,
      String posterName,
      DateTime postedAt});
}

/// @nodoc
class __$StoryCopyWithImpl<$Res> extends _$StoryCopyWithImpl<$Res>
    implements _$StoryCopyWith<$Res> {
  __$StoryCopyWithImpl(_Story _value, $Res Function(_Story) _then)
      : super(_value, (v) => _then(v as _Story));

  @override
  _Story get _value => super._value as _Story;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? posterId = freezed,
    Object? posterName = freezed,
    Object? postedAt = freezed,
  }) {
    return _then(_Story(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      posterId: posterId == freezed
          ? _value.posterId
          : posterId // ignore: cast_nullable_to_non_nullable
              as String,
      posterName: posterName == freezed
          ? _value.posterName
          : posterName // ignore: cast_nullable_to_non_nullable
              as String,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Story implements _Story {
  const _$_Story(
      {required this.id,
      required this.content,
      required this.posterId,
      required this.posterName,
      required this.postedAt});

  factory _$_Story.fromJson(Map<String, dynamic> json) =>
      _$_$_StoryFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final String posterId;
  @override
  final String posterName;
  @override
  final DateTime postedAt;

  @override
  String toString() {
    return 'Story(id: $id, content: $content, posterId: $posterId, posterName: $posterName, postedAt: $postedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Story &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.posterId, posterId) ||
                const DeepCollectionEquality()
                    .equals(other.posterId, posterId)) &&
            (identical(other.posterName, posterName) ||
                const DeepCollectionEquality()
                    .equals(other.posterName, posterName)) &&
            (identical(other.postedAt, postedAt) ||
                const DeepCollectionEquality()
                    .equals(other.postedAt, postedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(posterId) ^
      const DeepCollectionEquality().hash(posterName) ^
      const DeepCollectionEquality().hash(postedAt);

  @JsonKey(ignore: true)
  @override
  _$StoryCopyWith<_Story> get copyWith =>
      __$StoryCopyWithImpl<_Story>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoryToJson(this);
  }
}

abstract class _Story implements Story {
  const factory _Story(
      {required String id,
      required String content,
      required String posterId,
      required String posterName,
      required DateTime postedAt}) = _$_Story;

  factory _Story.fromJson(Map<String, dynamic> json) = _$_Story.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  String get posterId => throw _privateConstructorUsedError;
  @override
  String get posterName => throw _privateConstructorUsedError;
  @override
  DateTime get postedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoryCopyWith<_Story> get copyWith => throw _privateConstructorUsedError;
}
