import 'package:get/get.dart';
import 'package:petbes/domain/models/chat_message/chat_message.dart';

class ChatController extends GetxController {
  final _messages = <ChatMessage>[].obs;

  List<ChatMessage> get entries => _messages;

  getInitialData() {}

  sendMessage(String content) {}
}
