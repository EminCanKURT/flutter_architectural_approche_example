import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

/// App env
final class AppEnvironment {
  /// Setup app env
  AppEnvironment.setup({required AppConfiguration appConfig}) {
    _appConfig = appConfig;
  }

  /// General setup
  AppEnvironment.general() {
    _appConfig = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _appConfig;

  /// App config
  static AppConfiguration get appConfig => _appConfig;
}

/// App env enum
enum AppEnvEnum {
  /// Dev
  dev,

  /// Prod
  prod;

  /// Value
  String get value {
    try {
      return switch (this) {
        dev => DevEnv().baseUrl,
        prod => ProdEnv().baseUrl,
      };
    } on Exception catch (e, s) {
      throw Exception('Invalid environment value error: $e stackTrace: $s');
    }
  }
}
