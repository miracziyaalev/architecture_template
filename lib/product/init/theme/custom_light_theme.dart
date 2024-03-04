import 'package:architecture_template/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_template/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// Custom light theme for the app with custom color scheme
final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        textTheme: TextTheme(
          bodySmall: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            color: CustomColorScheme.lightColorScheme.primary,
          ),
        ).apply(
          fontFamily: 'Cereal',
        ),
        appBarTheme: appBarTheme,
      );

  @override
  FloatingActionButtonThemeData floatingActionButtonThemeData = const FloatingActionButtonThemeData();

  @override
  AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: CustomColorScheme.darkColorScheme.error,
    foregroundColor: CustomColorScheme.darkColorScheme.onError,
  );
}
