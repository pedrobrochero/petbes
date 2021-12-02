// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$_$_PostFromJson(Map<String, dynamic> json) {
  return _$_Post(
    id: json['id'] as String,
    imageUrl: json['imageUrl'] as String,
    posterId: json['posterId'] as String,
    posterName: json['posterName'] as String,
    postedAt: DateTime.parse(json['postedAt'] as String),
    caption: json['caption'] as String?,
  );
}

Map<String, dynamic> _$_$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'posterId': instance.posterId,
      'posterName': instance.posterName,
      'postedAt': instance.postedAt.toIso8601String(),
      'caption': instance.caption,
    };
