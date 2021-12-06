import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/chat_list_controller.dart';
import 'package:petbes/domain/models/chat/chat.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/drawer_component.dart';
import 'package:petbes/ui/_components/network_image.dart';
import 'package:petbes/ui/pages/chat.dart';

class ChatListUI extends StatefulWidget {
  static const route = 'chat_list';
  const ChatListUI({Key? key}) : super(key: key);

  @override
  State<ChatListUI> createState() => _ChatListUIState();
}

class _ChatListUIState extends State<ChatListUI> {
  final ChatListController controller = Get.find();
  final S s = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: DrawerComponent(
        currentRoute: ChatListUI.route,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Expanded(
                  child: Obx(
                () => ListView.builder(
                  reverse: true,
                  itemCount: controller.entries.length,
                  itemBuilder: (context, index) =>
                      _chat(controller.entries.elementAt(index)),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chat(Chat chat) {
    const avatarSize = 48.0;
    final primaryColor = Theme.of(context).primaryColor;
    return ListTile(
      shape: Border(
          bottom: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(.5))),
      leading: Container(
        width: avatarSize,
        height: avatarSize,
        decoration: BoxDecoration(
          color: primaryColor,
          border: Border.all(width: 2, color: primaryColor),
          borderRadius: BorderRadius.circular(avatarSize),
        ),
        child: ClipOval(
          child: chat.senderPicture != null
              ? MyNetworkImage(chat.senderPicture)
              : const Icon(Icons.person, color: Colors.white),
        ),
      ),
      title: Text(chat.senderName),
      subtitle: chat.lastMessage != null
          ? Text(
              chat.lastMessage!,
              overflow: TextOverflow.ellipsis,
            )
          : null,
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        final route = MaterialPageRoute(
          builder: (context) => ChatUI(chat),
        );
        Navigator.push(context, route);
      },
    );
  }

  AppBar _appBar() =>
      AppBar(title: Text(s.myChats), foregroundColor: Colors.white);
}
