import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/chat_controller.dart';
import 'package:petbes/domain/models/chat/chat.dart';
import 'package:petbes/domain/models/chat_message/chat_message.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/misc/extensions.dart';
import 'package:petbes/ui/_components/spacers_components.dart';

class ChatUI extends StatefulWidget {
  const ChatUI(this.chat, {Key? key}) : super(key: key);
  final Chat chat;

  @override
  State<ChatUI> createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  late final sSize = MediaQuery.of(context).size;
  final textController = TextEditingController();
  final S s = Get.find();
  final ChatController controller = Get.find();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(widget.chat),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Expanded(
                  child: Obx(
                () => ListView.builder(
                  reverse: true,
                  itemCount: controller.entries.length,
                  itemBuilder: (context, index) =>
                      _message(controller.entries.elementAt(index)),
                ),
              )),
              Row(
                children: [
                  Expanded(child: TextField(controller: textController)),
                  IconButton(
                    onPressed: () async {
                      await controller.sendMessage(textController.text);
                      textController.clear();
                    },
                    icon: const Icon(Icons.send),
                    color: Theme.of(context).primaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar(Chat chat) =>
      AppBar(title: Text(chat.senderName), foregroundColor: Colors.white);

  Widget _message(ChatMessage message) {
    return Align(
        alignment: message.senderId == controller.ownUserId
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: sSize.width * .7),
          child: Card(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(message.sentAt.time,
                          style: Theme.of(context)
                              .textTheme
                              .overline
                              ?.copyWith(color: Colors.grey)),
                      Spacers.verticalS,
                      Text(message.content),
                    ],
                  ))),
        ));
  }
}
