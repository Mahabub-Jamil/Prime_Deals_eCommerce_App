import 'package:flutter/material.dart';
import 'package:prime_deals/app/app_colors.dart';

class AppThemeData {
  static ThemeData get lightThemeData {
    return ThemeData(
      colorSchemeSeed: AppColor.themeColor,
      scaffoldBackgroundColor: Colors.white,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColor.themeColor,
      ),
      appBarTheme: const AppBarTheme(color: Colors.white),
    );
  }

  static ThemeData get darkThemeData {
    return ThemeData(
      colorSchemeSeed: AppColor.themeColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColor.themeColor,
      ),
      brightness: Brightness.dark,
    );
  }
}
