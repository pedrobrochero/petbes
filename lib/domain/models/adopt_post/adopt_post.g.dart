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
    city: json['city'] as String,
    petAge: json['petAge'] as int,
  );
}

Map<String, dynamic> _$_$_AdoptPostToJson(_$_AdoptPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'petName': instance.petName,
      'city': instance.city,
      'petAge': instance.petAge,
    };
