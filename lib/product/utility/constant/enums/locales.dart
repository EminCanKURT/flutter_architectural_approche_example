import 'package:flutter/material.dart';

/// Uygulama içinde kullanılan dil seçeneklerini temsil eden enum.
///
/// Her bir değer, ilgili dilin [Locale] nesnesini içerir.
/// Örneğin:
/// ```dart
/// Locales.tr.locale // Türkçe için Locale('tr', 'TR')
/// Locales.en.locale // İngilizce için Locale('en', 'US')
/// ```
enum Locales {
  /// Türkçe dil seçeneği
  tr(locale: Locale('tr', 'TR')),

  /// İngilizce dil seçeneği
  en(locale: Locale('en', 'US'));

  /// [Locales] enum constructor'ı
  ///
  /// [locale] parametresi zorunludur ve ilgili dilin [Locale] nesnesini
  ///  temsil eder
  const Locales({required this.locale});

  /// Enum değerinin ilişkili olduğu [Locale] nesnesi
  final Locale locale;
}
