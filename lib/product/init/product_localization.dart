import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/product/utility/constant/enums/locales.dart';

/// Localization sinifinin.
@immutable
// @immutable, sinifinin tum alanlarinin degistirilemez olmasi gerektigini
// Dart analizorune bildirir.
//Yani, sinifinin tum alanlarinin final olmasi gerekir.
final class ProductLocalization extends EasyLocalization {
  // final class kullaniminin avantajlari:
  // Ne yapar : extends ve implements edilmeisni engeller.
  // Guvenligi Artirir: Sinifinin nasil kullanilmasi gerektigini daha
  // net belirler.Disaridan gereksiz genisletilmeleri ve
  // yanlis kullanimlari onler.
  // Performans Optimizasyonu: Dart derleyicisi, final siniflari optimize
  // edebilir cunku bu siniflarin miras alinmayacagini bilir.
  /// Localization sinifinin olusturucusudur.
  ProductLocalization({
    // Amac proje bagimliligini azaltmak icin bir ara katman olusturmak
    // bu yuzden onerilen yerine bunu yaptik.
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedLocales,
          path: _path,
          useOnlyLangCode: true,
        );

  /// Uygulama tarafindan desteklenen tum dillerin listesi
  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _path = 'assets/translations';

  /// Dil secenegini guncelleyen fonksiyon
  static Future<void> updateLocale({
    required Locales locale,
    required BuildContext context,
  }) async =>
      context.setLocale(locale.locale);
}
