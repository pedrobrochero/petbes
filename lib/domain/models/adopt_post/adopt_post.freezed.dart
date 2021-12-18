// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'adopt_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdoptPost _$AdoptPostFromJson(Map<String, dynamic> json) {
  return _AdoptPost.fromJson(json);
}

/// @nodoc
class _$AdoptPostTearOff {
  const _$AdoptPostTearOff();

  _AdoptPost call(
      {required String id,
      required String imageUrl,
      required String petName,
      required Sex sex,
      required DateTime? petAge}) {
    return _AdoptPost(
      id: id,
      imageUrl: imageUrl,
      petName: petName,
      sex: sex,
      petAge: petAge,
    );
  }

  AdoptPost fromJson(Map<String, Object> json) {
    return AdoptPost.fromJson(json);
  }
}

/// @nodoc
const $AdoptPost = _$AdoptPostTearOff();

/// @nodoc
mixin _$AdoptPost {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get petName => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  DateTime? get petAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdoptPostCopyWith<AdoptPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptPostCopyWith<$Res> {
  factory $AdoptPostCopyWith(AdoptPost value, $Res Function(AdoptPost) then) =
      _$AdoptPostCopyWithImpl<$Res>;
  $Res call(
      {String id, String imageUrl, String petName, Sex sex, DateTime? petAge});
}

/// @nodoc
class _$AdoptPostCopyWithImpl<$Res> implements $AdoptPostCopyWith<$Res> {
  _$AdoptPostCopyWithImpl(this._value, this._then);

  final AdoptPost _value;
  // ignore: unused_field
  final $Res Function(AdoptPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? petName = freezed,
    Object? sex = freezed,
    Object? petAge = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      petAge: petAge == freezed
          ? _value.petAge
          : petAge // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$AdoptPostCopyWith<$Res> implements $AdoptPostCopyWith<$Res> {
  factory _$AdoptPostCopyWith(
          _AdoptPost value, $Res Function(_AdoptPost) then) =
      __$AdoptPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String imageUrl, String petName, Sex sex, DateTime? petAge});
}

/// @nodoc
class __$AdoptPostCopyWithImpl<$Res> extends _$AdoptPostCopyWithImpl<$Res>
    implements _$AdoptPostCopyWith<$Res> {
  __$AdoptPostCopyWithImpl(_AdoptPost _value, $Res Function(_AdoptPost) _then)
      : super(_value, (v) => _then(v as _AdoptPost));

  @override
  _AdoptPost get _value => super._value as _AdoptPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? petName = freezed,
    Object? sex = freezed,
    Object? petAge = freezed,
  }) {
    return _then(_AdoptPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      petAge: petAge == freezed
          ? _value.petAge
          : petAge // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdoptPost implements _AdoptPost {
  const _$_AdoptPost(
      {required this.id,
      required this.imageUrl,
      required this.petName,
      required this.sex,
      required this.petAge});

  factory _$_AdoptPost.fromJson(Map<String, dynamic> json) =>
      _$_$_AdoptPostFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String petName;
  @override
  final Sex sex;
  @override
  final DateTime? petAge;

  @override
  String toString() {
    return 'AdoptPost(id: $id, imageUrl: $imageUrl, petName: $petName, sex: $sex, petAge: $petAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdoptPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.petName, petName) ||
                const DeepCollectionEquality()
                    .equals(other.petName, petName)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.petAge, petAge) ||
                const DeepCollectionEquality().equals(other.petAge, petAge)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(petName) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(petAge);

  @JsonKey(ignore: true)
  @override
  _$AdoptPostCopyWith<_AdoptPost> get copyWith =>
      __$AdoptPostCopyWithImpl<_AdoptPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AdoptPostToJson(this);
  }
}

abstract class _AdoptPost implements AdoptPost {
  const factory _AdoptPost(
      {required String id,
      required String imageUrl,
      required String petName,
      required Sex sex,
      required DateTime? petAge}) = _$_AdoptPost;

  factory _AdoptPost.fromJson(Map<String, dynamic> json) =
      _$_AdoptPost.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get petName => throw _privateConstructorUsedError;
  @override
  Sex get sex => throw _privateConstructorUsedError;
  @override
  DateTime? get petAge => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdoptPostCopyWith<_AdoptPost> get copyWith =>
      throw _privateConstructorUsedError;
}
