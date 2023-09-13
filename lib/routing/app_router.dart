import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_color_app/features/color/presentation/cubit_color/cubit_color_page.dart';
import 'package:flutter_color_app/features/color/presentation/simple_color/simple_color_page.dart';
import 'package:flutter_color_app/features/home/presentation/home_page.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  AppRouter() : super();

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  late final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      children: [
        RedirectRoute(path: 'simple', redirectTo: ''),
        AutoRoute(
          path: 'simple',
          page: SimpleColorRoute.page,
        ),
        AutoRoute(
          path: 'cubit',
          page: CubitColorRoute.page,
        ),
      ],
    ),
  ];
}
