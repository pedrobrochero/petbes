// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$_$_ChatMessageFromJson(Map<String, dynamic> json) {
  return _$_ChatMessage(
    id: json['id'] as String,
    content: json['content'] as String,
    senderId: json['senderId'] as String,
    receiverId: json['receiverId'] as String,
    sentAt: DateTime.parse(json['sentAt'] as String),
  );
}

Map<String, dynamic> _$_$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'sentAt': instance.sentAt.toIso8601String(),
    };
