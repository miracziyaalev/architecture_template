import 'package:flutter/material.dart';

/// Projects supported locales enums for localization.
enum Locales {
  /// Turkish locale.
  tr(Locale('tr', 'TR')),

  /// English locale.
  en(Locale('en', 'US'));

  /// Returns the locale value of the enum.
  final Locale locale;

  const Locales(this.locale);
}
