// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adopt_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdoptPost _$_$_AdoptPostFromJson(Map<String, dynamic> json) {
  return _$_AdoptPost(
    id: json['id'] as String,
    imageUrl: json['imageUrl'] as String,
    petName: json['petName'] as String,
    sex: _$enumDecode(_$SexEnumMap, json['sex']),
    petAge: json['petAge'] == null
        ? null
        : DateTime.parse(json['petAge'] as String),
  );
}

Map<String, dynamic> _$_$_AdoptPostToJson(_$_AdoptPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'petName': instance.petName,
      'sex': _$SexEnumMap[instance.sex],
      'petAge': instance.petAge?.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$SexEnumMap = {
  Sex.male: 'Male',
  Sex.female: 'Female',
};
