// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$_$_ChatFromJson(Map<String, dynamic> json) {
  return _$_Chat(
    id: json['id'] as String,
    senderName: json['senderName'] as String,
    senderPicture: json['senderPicture'] as String?,
    lastMessage: json['lastMessage'] as String?,
  );
}

Map<String, dynamic> _$_$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'senderName': instance.senderName,
      'senderPicture': instance.senderPicture,
      'lastMessage': instance.lastMessage,
    };
