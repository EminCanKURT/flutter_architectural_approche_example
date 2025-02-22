import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/product/init/config/app_env.dart';
import 'package:flutter_architectural_approach_example/product/init/language/locale_keys.g.dart';
import 'package:flutter_architectural_approach_example/product/init/product_localization.dart';
import 'package:flutter_architectural_approach_example/product/navigation/app_router.dart';
import 'package:flutter_architectural_approach_example/product/utility/constant/enums/locales.dart';
import 'package:flutter_architectural_approach_example/product/widget/project_network_image.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

/// Ana sayfa view'i
@RoutePage()
final class HomeView extends StatefulWidget {
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
      body: Column(
        children: [
          //ben bir paketten assette erieşeceksem onun package adını
          //yazmam gerekiyor.
          //   Assets.icons.icLove.svg(
          //     package: 'gen',
          //   ),
          Text(''.ext.version),
          Text(
            'veli',
            style: context.general.textTheme.titleLarge?.copyWith(
              color: 'fcb103'.ext.color,
            ),
          ),
          FloatingActionButton(
            onPressed: () async {
              await 'kartal'.ext.launchMaps();
            },
            child: const Text('Kartal a konumu için tıkla'),
          ),

          const ProjectNetworkImage(
            url: 'https://picsum.photos/200/300',
            size: Size(200, 200),
          ),
          //    Assets.lottie.animZombie.lottie(
          //      package: 'gen',
          //    ),
          Assets.images.imgFlags.image(
            package: 'gen',
          ),
          Center(
            // tr(args: ["arg1", "arg2"])  bizim textin yanına ekleniyor.
            child: Text(
              LocaleKeys.general_button_save,
              style: Theme.of(context).textTheme.titleLarge,
            ).tr(),
          ),
          const SizedBox(height: 10),
          Center(child: Text(AppEnvEnum.dev.value)),
          ElevatedButton(
            onPressed: () => context.router.push(HomeDetailRoute(id: '1')),
            child: const Text('Detail'),
          ),
        ],
      ),
    );
  }
}
