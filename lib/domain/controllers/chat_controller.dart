import 'package:faker/faker.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/models/chat_message/chat_message.dart';

class ChatController extends GetxController {
  ChatController() {
    getInitialData();
  }
  final _messages = <ChatMessage>[].obs;

  List<ChatMessage> get entries => _messages;

  getInitialData() {
    final _entries = <ChatMessage>[];
    for (var i = 0; i < 10; i++) {
      _entries.add(_mockMessage());
    }
    entries.addAll(_entries);
  }

  sendMessage(String content) async {}

  // MOCKS
  final ownUserId = faker.guid.guid();
  final otherUserId = faker.guid.guid();

  _mockMessage() => ChatMessage(
      id: '',
      content: faker.lorem.sentence(),
      senderId: faker.randomGenerator.integer(2) == 0 ? ownUserId : otherUserId,
      receiverId: '',
      sentAt: faker.date.dateTime());
}
