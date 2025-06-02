// lib/theme/app_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static const Color _primary = Color(0xFF21ABA5);
  static const Color _secondary = Color(0xFF2DBAB1);
  static const Color _bgLightTheme = Color(0xFFFFFFFF);
  static const Color _bgDarkTheme = Colors.black;

  static ThemeData lightTheme = ThemeData(
    primaryColor: _primary,
    scaffoldBackgroundColor: _bgLightTheme,
    colorScheme: ColorScheme.light(primary: _primary, secondary: _secondary),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: _primary,
    scaffoldBackgroundColor: _bgDarkTheme,
    colorScheme: ColorScheme.dark(primary: _primary, secondary: _secondary),
  );
}
