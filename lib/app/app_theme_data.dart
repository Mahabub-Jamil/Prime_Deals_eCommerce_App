import 'package:flutter/material.dart';
import 'package:prime_deals/app/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppThemeData {
  static ThemeData get lightThemeData {
    return ThemeData(
      colorSchemeSeed: AppColor.themeColor,
      scaffoldBackgroundColor: Colors.white,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColor.themeColor,
      ),
      appBarTheme: const AppBarTheme(color: Colors.white),
      textTheme: TextTheme(
        titleLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.grey),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.themeColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.themeColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.themeColor, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.themeColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.themeColor, width: 1),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.themeColor,
          foregroundColor: Colors.white,
          fixedSize: Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(4),
          ),
          padding: EdgeInsets.symmetric(vertical: 12),
          textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColor.themeColor),
      ),
      extensions: [
        MaterialPinThemeExtension(
          theme: MaterialPinTheme(
            fillColor: Colors.white,
            borderColor: AppColor.themeColor,
            focusedBorderColor: Colors.green,
            focusedFillColor: Colors.white,
            filledBorderColor: AppColor.themeColor,
          ),
        ),
      ],
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
