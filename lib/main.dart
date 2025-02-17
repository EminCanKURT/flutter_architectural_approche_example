import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approche_example/feature/home/view/widget/home_view.dart';
import 'package:flutter_architectural_approche_example/product/init/product_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ProductLocalization(
      child: const MyApp(),
    ),
  );
}

/// Uygulamanın ana sınıfı
class MyApp extends StatelessWidget {
  /// MyApp sınıfının oluşturucusudur
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Material App',
      home: const HomeView(),
    );
  }
}
