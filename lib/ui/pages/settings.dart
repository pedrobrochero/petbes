import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/drawer_component.dart';

class SettingsUI extends StatefulWidget {
  static const route = 'settings';
  const SettingsUI({Key? key}) : super(key: key);

  @override
  State<SettingsUI> createState() => _SettingsUIState();
}

class _SettingsUIState extends State<SettingsUI> {
  final S s = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: DrawerComponent(currentRoute: SettingsUI.route),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text(s.darkMode),
            value: true,
            onChanged: (_) {},
          ),
        ],
      ),
    );
  }

  AppBar _appBar() =>
      AppBar(title: Text(s.settings), foregroundColor: Colors.white);
}
