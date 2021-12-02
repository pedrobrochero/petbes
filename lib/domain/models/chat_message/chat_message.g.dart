// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$_$_ChatMessageFromJson(Map<String, dynamic> json) {
  return _$_ChatMessage(
    id: json['id'] as String,
    content: json['content'] as String,
    sender: json['sender'] as String,
    receiver: json['receiver'] as String,
    sentBy: DateTime.parse(json['sentBy'] as String),
  );
}

Map<String, dynamic> _$_$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'sentBy': instance.sentBy.toIso8601String(),
    };
