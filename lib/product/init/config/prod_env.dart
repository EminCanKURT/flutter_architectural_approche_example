import 'package:envied/envied.dart';
import 'package:flutter_architectural_approach_example/product/init/config/app_config.dart';

part 'prod_env.g.dart';

@Envied(
  path: 'assets/env/.prod.env',
  obfuscate: true,
)

/// Prod ortamı için environment değişkenleri
final class ProdEnv implements AppConfig {
  @EnviedField(varName: 'BASE_URL')

  /// Prod ortamı için base url
  static final String _baseUrl = _ProdEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')

  /// Prod ortamı için api key
  static final String _apiKey = _ProdEnv._apiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}
