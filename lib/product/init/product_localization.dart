import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approche_example/product/utility/constant/enums/locales.dart';

/// Localization sınıfı.
@immutable
// @immutable, sınıfın tüm alanlarının değiştirilemez olması gerektiğini
// Dart analizörüne bildirir. Yani, sınıfın tüm alanları final olmalıdır.
final class ProductLocalization extends EasyLocalization {
  // final class kullanımının avantajları:
  // Ne yapar : extends ve implements edilmeisni engeller.
  // Güvenliği Artırır: Sınıfın nasıl kullanılması gerektiğini daha
  // net belirler.Dışarıdan gereksiz genişletilmeleri ve
  // yanlış kullanımları önler.
  // Performans Optimizasyonu: Dart derleyicisi, final sınıfları optimize
  // edebilir çünkü bu sınıfların miras alınmayacağını bilir.
  /// Localization sınıfının oluşturucusudur.
  ProductLocalization({
    // Amaç proje bağımlılığını azaltmak için bir ara katman oluşturmak
    // bu yüzden önerilen yerine bunu yaptık.
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedLocales,
          path: _path,
          useOnlyLangCode: true,
        );

  /// Uygulama tarafından desteklenen tüm dillerin listesi
  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _path = 'assets/translations';

  /// Dil seçeneğini güncelleyen fonksiyon
  static Future<void> updateLocale({
    required Locales locale,
    required BuildContext context,
  }) async =>
      context.setLocale(locale.locale);
}
