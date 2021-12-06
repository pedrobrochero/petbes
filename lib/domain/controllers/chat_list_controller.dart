import 'package:faker/faker.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/models/chat/chat.dart';

class ChatListController extends GetxController {
  ChatListController() {
    getInitialData();
  }
  final _chats = <Chat>[].obs;

  List<Chat> get entries => _chats;

  getInitialData() {
    final _entries = <Chat>[];
    for (var i = 0; i < 10; i++) {
      _entries.add(_mockMessage());
    }
    entries.addAll(_entries);
  }

  _mockMessage() => Chat(
      id: '',
      senderName: faker.person.name(),
      lastMessage: faker.lorem.sentence());
}
