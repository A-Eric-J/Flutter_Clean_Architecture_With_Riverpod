import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static double _resolveFontSize(double fontSize) {
    // Ensures font sizes adapt responsively
    return ScreenUtil().setSp(fontSize * 16);
  }

  static TextTheme _textTheme(Color color) {
    return TextTheme(
      displayLarge: TextStyle(
          fontSize: _resolveFontSize(2.2),
          color: color,
          fontWeight: FontWeight.w600),
      displayMedium: TextStyle(
          fontSize: _resolveFontSize(1.9),
          color: color,
          fontWeight: FontWeight.w500),
      displaySmall: TextStyle(
          fontSize: _resolveFontSize(1.7),
          color: color,
          fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(
          fontSize: _resolveFontSize(1.2),
          color: color,
          fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          fontSize: _resolveFontSize(1.1),
          color: color,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          fontSize: _resolveFontSize(1.0),
          color: color,
          fontWeight: FontWeight.w400),
      titleLarge: TextStyle(
          fontSize: _resolveFontSize(1.3),
          color: color,
          fontWeight: FontWeight.w500),
    );
  }

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    primaryColor: AppColors.pri40,
    colorScheme: const ColorScheme.light(
      primary: AppColors.pri40,
      secondary: AppColors.secondaryColor,
      background: AppColors.priBGlight,
      onPrimary: AppColors.whiteColor,
      onBackground: AppColors.black,
    ),
    textTheme: _textTheme(AppColors.black),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      iconTheme: IconThemeData(color: AppColors.black),
      titleTextStyle: TextStyle(color: AppColors.black, fontSize: 18),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.pri40,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.priBGdark,
    primaryColor: AppColors.secondaryColor,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.secondaryColor,
      secondary: AppColors.pri40,
      background: AppColors.priBGdark,
      onPrimary: AppColors.whiteColor,
      onBackground: AppColors.whiteColor,
    ),
    textTheme: _textTheme(AppColors.whiteColor),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.priBGdark,
      iconTheme: IconThemeData(color: AppColors.whiteColor),
      titleTextStyle: TextStyle(color: AppColors.whiteColor, fontSize: 18),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.secondaryColor,
    ),
  );
}
