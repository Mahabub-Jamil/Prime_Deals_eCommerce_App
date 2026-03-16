import 'package:flutter/material.dart';
import 'package:prime_deals/app/app_colors.dart';

class AppThemeData {
  static ThemeData get lightThemeData {
    return ThemeData(
      colorSchemeSeed: AppColor.themeColor,
      scaffoldBackgroundColor: Colors.white,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColor.themeColor,
      ),
    );
  }
}
