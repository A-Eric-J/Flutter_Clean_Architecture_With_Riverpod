import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static const String settingsBox = 'settingsBox';
  static const String themeKey = 'isDarkMode';

  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(settingsBox);
  }

  static bool isDarkMode() {
    final box = Hive.box(settingsBox);
    return box.get(themeKey, defaultValue: false);
  }

  static Future<void> setDarkMode(bool value) async {
    final box = Hive.box(settingsBox);
    await box.put(themeKey, value);
  }
}
