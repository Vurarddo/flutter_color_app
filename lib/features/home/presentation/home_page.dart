import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:flutter_color_app/infrastructure/theme/theme_extensions.dart';
import 'package:flutter_color_app/routing/app_router.dart';

part 'widgets/_bottom_navigation_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        SimpleColorRoute(),
        CubitColorRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return _BottomNavigationBar(tabsRouter: tabsRouter);
      },
    );
  }
}
