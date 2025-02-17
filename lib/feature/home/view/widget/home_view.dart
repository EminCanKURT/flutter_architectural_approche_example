import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approche_example/product/init/language/locale_keys.g.dart';
import 'package:flutter_architectural_approche_example/product/init/product_localization.dart';
import 'package:flutter_architectural_approche_example/product/utility/constant/enums/locales.dart';

/// Ana sayfa view'i
class HomeView extends StatefulWidget {
  /// Oluşturucusudur
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          PopupMenuButton<Locales>(
            icon: const Icon(Icons.language),
            onSelected: (Locales locale) {
              ProductLocalization.updateLocale(
                locale: locale,
                context: context,
              );
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: Locales.tr,
                child: Text('Türkçe'),
              ),
              const PopupMenuItem(
                value: Locales.en,
                child: Text('English'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        // tr(args: ["arg1", "arg2"])  bizim textin yanına ekleniyor.
        child: const Text(LocaleKeys.general_button_save).tr(),
      ),
    );
  }
}
