import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/feature/home/view_model/home_view_model.dart';
import 'package:flutter_architectural_approach_example/product/init/product_localization.dart';
import 'package:flutter_architectural_approach_example/product/utility/constant/enums/locales.dart';
import 'package:flutter_architectural_approach_example/product/widget/padding/project_padding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/widgets.dart';

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
    return BlocProvider(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            SuccessDialog.show(
              context: context,
              title: 'title',
            );
          },
          child: const Icon(Icons.add),
        ),
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
            Padding(
              padding: const ProjectPadding.allNormal(),
              child: AdaptAllView(
                phone: Text(''.ext.version),
                tablet: Text(''.ext.version),
                desktop: Text(''.ext.version),
              ),
            ),
            Text(
              'veli',
              style: context.general.textTheme.titleLarge?.copyWith(
                color: 'fcb103'.ext.color,
              ),
            ),

            ///FloatingActionButton(
            //onPressed: () async {
            //await 'kartal'.ext.launchMaps();
            //},
            //  child: const Text('Kartal a konumu için tıkla'),
            //  ),

            //  const ProjectNetworkImage(
            //    url: 'https://picsum.photos/200/300',
            //    size: Size(200, 200),
            //  ),
            //    Assets.lottie.animZombie.lottie(
            //      package: 'gen',
            //    ),
            //  Assets.images.imgFlags.image(
            //    package: 'gen',
            //  ),
            //  Center(
            // tr(args: ["arg1", "arg2"])  bizim textin yanına ekleniyor.
            //  child: Text(
            //    LocaleKeys.general_button_save,
            //    style: Theme.of(context).textTheme.titleLarge,
            //  ).tr(),
            //  ),
            const SizedBox(height: 10),
            //  Center(child: Text(AppEnvEnum.dev.value)),
            //  ElevatedButton(
            //    onPressed: () => context.router.push(HomeDetailRoute(id: '1'))
            //    child: const Text('Detail'),
            //  ),
          ],
        ),
      ),
    );
  }
}
