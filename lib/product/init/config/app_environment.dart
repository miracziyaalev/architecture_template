import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

/// application environment manager class
final class AppEnvironment {
  /// setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  /// setup application environment
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _config;
}

/// get application environment items
enum AppEnvironmentItems {
  /// network base url
  baseUrl,

  /// google maps api key
  apiKey;

  /// get application environment items value
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment is not initialized.');
    }
  }
}
