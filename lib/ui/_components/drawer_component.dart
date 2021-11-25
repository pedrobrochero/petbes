import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:petbes/ui/pages/home.dart';
import 'package:petbes/ui/pages/login.dart';
import 'package:petbes/ui/pages/sign_up.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key, this.currentRoute}) : super(key: key);
  final String? currentRoute;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      _drawerTile(context, 'Sign up', SignUpUI.route, Icons.flutter_dash),
      _drawerTile(context, 'Login', LoginUI.route, Icons.flutter_dash),
      _drawerTile(context, 'Home', HomeUI.route, Icons.flutter_dash),
      _drawerTile(context, 'Home', HomeUI.route, Icons.flutter_dash),
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
