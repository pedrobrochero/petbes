import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/auth_controller.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/pages/adop_feed.dart';
import 'package:petbes/ui/pages/chat_list.dart';
import 'package:petbes/ui/pages/feed.dart';
import 'package:petbes/ui/pages/settings.dart';
import 'package:petbes/ui/pages/stories.dart';

class DrawerComponent extends StatelessWidget {
  DrawerComponent({Key? key, this.currentRoute}) : super(key: key);
  final String? currentRoute;
  final S s = Get.find();
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      _drawerTile(context, s.home, FeedUI.route, Icons.feed),
      _drawerTile(context, s.stories, StoriesUI.route,
          Icons.local_fire_department_outlined),
      _drawerTile(context, s.adopt, AdoptFeedUI.route, Icons.pets),
      _drawerTile(context, s.chat, ChatListUI.route, Icons.chat),
      _drawerTile(context, s.settings, SettingsUI.route, Icons.settings),
      // Log out
      const Divider(),
      ListTile(
          title: Text(s.logout),
          trailing: const Icon(Icons.exit_to_app),
          onTap: () async {
            await authController.logout();
            Get.offNamedUntil('/', ModalRoute.withName('/home'));
          })
    ];
    return Drawer(child: ListView(children: children));
  }

  Widget _drawerTile(
      BuildContext context, String label, String route, IconData? iconData) {
    final isCurrentRoute = currentRoute == route;
    return Material(
      color: isCurrentRoute
          ? Theme.of(context).colorScheme.secondary.withOpacity(.2)
          : null,
      child: ListTile(
        leading: iconData != null
            ? Icon(iconData,
                color: isCurrentRoute
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.black54)
            : null,
        title: Text(label,
            style: TextStyle(
                color: isCurrentRoute
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.black87)),
        onTap: () {
          Navigator.pop(context);
          if (!isCurrentRoute) Navigator.pushReplacementNamed(context, route);
        },
        selected: isCurrentRoute,
      ),
    );
  }
}
