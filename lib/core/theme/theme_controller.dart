import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../helpers/hive_helper.dart';
part 'theme_controller.g.dart';


@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  @override
  ThemeMode build() {
    final isDark = HiveHelper.isDarkMode();
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme() {
    final isCurrentlyDark = state == ThemeMode.dark;
    final newMode = isCurrentlyDark ? ThemeMode.light : ThemeMode.dark;
    HiveHelper.setDarkMode(newMode == ThemeMode.dark);
    state = newMode;
  }
}
