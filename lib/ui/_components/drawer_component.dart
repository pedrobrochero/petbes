import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      _drawerTile(context, s.home, FeedUI.route, Icons.feed),
      _drawerTile(context, s.stories, StoriesUI.route,
          Icons.local_fire_department_outlined),
      _drawerTile(context, s.adopt, AdoptFeedUI.route, Icons.pets),
      _drawerTile(context, s.chat, ChatListUI.route, Icons.chat),
      _drawerTile(context, s.settings, SettingsUI.route, Icons.settings),
    ];
    return Drawer(child: ListView(children: children));
  }

  Widget _drawerTile(
      BuildContext context, String label, String route, IconData? iconData) {
    final isCurrentRoute = currentRoute == route;
    final textColor = isCurrentRoute
        ? Theme.of(context).colorScheme.secondary
        : Colors.black87;
    final iconColor = isCurrentRoute
        ? Theme.of(context).colorScheme.secondary
        : Colors.black54;
    final backgroundColor = isCurrentRoute
        ? Theme.of(context).colorScheme.secondary.withOpacity(.2)
        : Colors.white;

    return Material(
      color: backgroundColor,
      child: ListTile(
        leading: iconData != null
            ? Icon(
                iconData,
                color: iconColor,
              )
            : null,
        title: Text(
          label,
          style: TextStyle(color: textColor),
        ),
        onTap: () {
          Navigator.pop(context);
          if (!isCurrentRoute) Navigator.pushReplacementNamed(context, route);
        },
        selected: isCurrentRoute,
      ),
    );
  }
}
