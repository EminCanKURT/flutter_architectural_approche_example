import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_architectural_approach_example/product/init/config/app_env.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

/// Uygulama başlatma sınıfı
/// olmazsa olmaz initi bir projenin
final class ApplicationInitialize {
  // bu sıfıntan bir nesne olusmunu engeller asadece static fonklara erişim var.
  const ApplicationInitialize._setup();

  /// Uygulama başlatma fonksiyonu
  /// Normal try-catch asenkron hataları yakalayamazken,
  /// runZonedGuarded hepsini yakalayabilir.
  /// Flutter projelerinde, uygulama çökmelerini önlemek için runApp çağrısını
  /// runZonedGuarded içine almak yaygın bir pratiktir:
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // küçük try catch hata loglamak için
    await runZonedGuarded<Future<void>>(
      () async {
        await _init();
      },
      (error, stack) {
        Logger().e(error.toString());
      },
    );
  }

  /// Uygulama başlatma fonksiyonu
  // burada küçük basic işlemler yapılmalı
  static Future<void> _init() async {
    await EasyLocalization.ensureInitialized();
    // localizasyon loglarının seviyesini ayarlar
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // kartal paketinin init fonksiyonu bu bir tık uzun
    await DeviceUtility.instance.initPackageInfo();
    // consola düşen her hata buraya gelir
    //burdan firebase gibi yerleri besleyebiliriz
    FlutterError.onError = (details) {
      // TODO: custom log yazılacak
      Logger().e(details.exceptionAsString());
    };
    AppEnvironment.general();

    // TODO: dependency injection
  }
}
