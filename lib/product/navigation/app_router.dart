import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/feature/home/view/home_detail_view.dart';
import 'package:flutter_architectural_approach_example/feature/home/view/widget/home_view.dart';

part 'app_router.gr.dart';

/// App router// pakette burası screen yani sen ne yapmak istersen
@AutoRouterConfig(replaceInRouteName: AppRouter._replaceInRouteName)
final class AppRouter extends RootStackRouter {
  static const _replaceInRouteName = 'View|Page,Route';
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: HomeDetailRoute.page,
        ),
      ];
}
