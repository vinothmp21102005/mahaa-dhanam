import 'package:flutter/material.dart';

class AppColors {
  static const Color gold = Color(0xFFD4AF37);
  static const Color darkGreen = Color(0xFF0F3D3E);
  static const Color backgroundWhite = Colors.white;
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color darkGrey = Color(0xFF757575);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.darkGreen,
      scaffoldBackgroundColor: AppColors.backgroundWhite,
      colorScheme: ColorScheme.light(
        primary: AppColors.darkGreen,
        secondary: AppColors.gold,
        surface: AppColors.backgroundWhite,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkGreen,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.gold),
        titleTextStyle: TextStyle(
          color: AppColors.gold,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      useMaterial3: true,
      fontFamily: 'Roboto', // Modern system font
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
