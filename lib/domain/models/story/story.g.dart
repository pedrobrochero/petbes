// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Story _$_$_StoryFromJson(Map<String, dynamic> json) {
  return _$_Story(
    id: json['id'] as String,
    content: json['content'] as String,
    posterId: json['posterId'] as String,
    posterName: json['posterName'] as String,
    postedAt: DateTime.parse(json['postedAt'] as String),
    color: colorFromJson(json['color'] as String),
  );
}

Map<String, dynamic> _$_$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'posterId': instance.posterId,
      'posterName': instance.posterName,
      'postedAt': instance.postedAt.toIso8601String(),
      'color': colorToJson(instance.color),
    };
