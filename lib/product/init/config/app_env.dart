import 'package:flutter/foundation.dart';
import 'package:flutter_architectural_approach_example/product/init/config/app_config.dart';
import 'package:flutter_architectural_approach_example/product/init/config/dev_env.dart';
import 'package:flutter_architectural_approach_example/product/init/config/prod_env.dart';

/// App env
final class AppEnv {
  /// Setup app env
  AppEnv.setup({required AppConfig appConfig}) {
    _appConfig = appConfig;
  }

  /// General setup
  AppEnv.general() {
    _appConfig = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfig _appConfig;

  /// App config
  static AppConfig get appConfig => _appConfig;
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
