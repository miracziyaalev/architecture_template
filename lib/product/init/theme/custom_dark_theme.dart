import 'package:architecture_template/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_template/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// custom dark theme class
final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        appBarTheme: appBarTheme,
      );

  @override
  FloatingActionButtonThemeData floatingActionButtonThemeData = const FloatingActionButtonThemeData();

  @override
  AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: CustomColorScheme.darkColorScheme.primary,
    foregroundColor: CustomColorScheme.darkColorScheme.onPrimary,
  );
}
