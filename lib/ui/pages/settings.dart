import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/data/shared_prefs_service.dart';
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
  final SharedPrefsService _prefs = Get.find();

  late bool isDarkMode = _prefs.isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: DrawerComponent(currentRoute: SettingsUI.route),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text(s.darkMode),
            value: isDarkMode,
            onChanged: (_) {
              setState(() {
                Get.changeTheme(isDarkMode ? Get.find() : ThemeData.dark());
                isDarkMode = !isDarkMode;
                _prefs.isDarkMode = isDarkMode;
              });
            },
          ),
        ],
      ),
    );
  }

  AppBar _appBar() =>
      AppBar(title: Text(s.settings), foregroundColor: Colors.white);
}
