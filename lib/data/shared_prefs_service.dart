import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get isInitialized => _prefs != null;

  final _isDarkModeKey = 'is_dark_mode';

  bool get isDarkMode => _getBool(_isDarkModeKey) ?? false;
  set isDarkMode(bool value) => _setBool(key: _isDarkModeKey, value: value);

  // Private methods ===============================================================================

  bool? _getBool(String key) {
    if (!isInitialized) return null;
    return _prefs!.getBool(key);
  }

  void _setBool({required String key, required bool? value}) {
    if (!isInitialized) return;
    if (value != null) {
      _prefs!.setBool(key, value);
    } else {
      _remove(_isDarkModeKey);
    }
  }

  void _remove(String key) {
    if (!isInitialized) return;
    _prefs!.remove(key);
  }
}
