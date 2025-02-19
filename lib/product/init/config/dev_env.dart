import 'package:envied/envied.dart';
import 'package:flutter_architectural_approach_example/product/init/config/app_config.dart';

part 'dev_env.g.dart';

@Envied(
  path: 'assets/env/.dev.env',
  obfuscate: true,
)

/// Dev ortamı için environment değişkenleri
final class DevEnv implements AppConfig {
// bu değerleri değiştireceksen .g yi sil yeniden oluştur
  @EnviedField(varName: 'BASE_URL')

  /// Dev ortamı için base url
  static final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')

  /// Dev ortamı için api key
  static final String _apiKey = _DevEnv._apiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}
