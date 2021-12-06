import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    required String id,
    required String senderName,
    String? senderPicture,
    String? lastMessage,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
