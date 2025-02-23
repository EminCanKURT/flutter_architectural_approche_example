import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/product/init/application_initialze.dart';
import 'package:flutter_architectural_approach_example/product/init/product_localization.dart';
import 'package:flutter_architectural_approach_example/product/init/state_init.dart';
import 'package:flutter_architectural_approach_example/product/init/theme/index.dart';
import 'package:flutter_architectural_approach_example/product/navigation/app_router.dart';
import 'package:widgets/widgets.dart';

void main() async {
  await ApplicationInitialize.init();
  runApp(
    ProductLocalization(
      child: const StateInit(child: _MyApp()),
    ),
  );
}

/// Uygulamanın ana sınıfı
final class _MyApp extends StatelessWidget {
  /// MyApp sınıfının oluşturucusudur
  const _MyApp();
//contextsiz kullanma yöntemi bu değeri static yapıp heryerden erişebilriz
  /// App router
  static final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      builder: CustomResponsive.build,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().theme,
      darkTheme: CustomDarkTheme().theme,
      themeMode: ThemeMode.dark,
    );
  }
}
