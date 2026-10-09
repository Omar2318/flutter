import 'package:flutter/material.dart';

class AppTheme {
  static const background = Color(0xFF17171B);
  static const surface = Color(0xFF2D2D33);
  static const yellow = Color(0xFFFFD84D);
  static const red = Color(0xFFFF646B);

  static final ThemeData umbreon = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: yellow,
      brightness: Brightness.dark,
      primary: yellow,
      onPrimary: background,
      secondary: red,
      onSecondary: background,
      surface: surface,
      onSurface: Color(0xFFF5F5F7),
      error: red,
      onError: background,
    ),
    scaffoldBackgroundColor: background,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: surface,
      foregroundColor: yellow,
      surfaceTintColor: Colors.transparent,
    ),
    cardTheme: CardThemeData(
      color: surface,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Color(0xFF57503A)),
      ),
      clipBehavior: Clip.antiAlias,
    ),
    iconTheme: const IconThemeData(color: yellow),
    listTileTheme: const ListTileThemeData(iconColor: yellow),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: yellow,
        foregroundColor: background,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: surface,
        foregroundColor: yellow,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: yellow,
        side: const BorderSide(color: yellow),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: yellow,
      foregroundColor: background,
    ),
  );
}
