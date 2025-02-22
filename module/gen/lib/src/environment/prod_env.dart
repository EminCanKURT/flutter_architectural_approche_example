import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'prod_env.g.dart';

@Envied(
  path: 'assets/env/.prod.env',
  obfuscate: true,
)

/// Prod ortamı için environment değişkenleri
final class ProdEnv implements AppConfiguration {
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
