import 'package:ecommerce_app/core/util/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.whiteColor,

    textTheme: TextTheme(
      labelLarge: const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w700,
      ),
      titleLarge: const TextStyle(
        fontSize: 32,
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: const TextStyle(
        fontSize: 12,
        color: Color.fromARGB(255, 237, 237, 237),
        fontWeight: FontWeight.w600,
      ),
    ),
    // elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        padding: const EdgeInsets.all(8),
        shadowColor: AppColors.blackColor,
        minimumSize: const Size.fromHeight(64),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
        backgroundColor: AppColors.blackColor,
      ),
    ),
    // TextField Theme
    inputDecorationTheme: InputDecorationTheme(
      // contentPadding: const EdgeInsets.symmetric(vertical: 22.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.blackColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.blackColor),
        borderRadius: BorderRadius.circular(10),
      ),
      hintStyle: TextStyle(
        fontSize: 16,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
