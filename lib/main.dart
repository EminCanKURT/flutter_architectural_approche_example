import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/feature/home/view/widget/home_view.dart';
import 'package:flutter_architectural_approach_example/product/init/application_initialze.dart';
import 'package:flutter_architectural_approach_example/product/init/product_localization.dart';
import 'package:flutter_architectural_approach_example/product/init/theme/index.dart';

void main() async {
  await ApplicationInitialize.init();
  runApp(
    ProductLocalization(
      child: const _MyApp(),
    ),
  );
}

/// Uygulamanın ana sınıfı
class _MyApp extends StatelessWidget {
  /// MyApp sınıfının oluşturucusudur
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().theme,
      darkTheme: CustomDarkTheme().theme,
      themeMode: ThemeMode.dark,
      home: const HomeView(),
    );
  }
}
