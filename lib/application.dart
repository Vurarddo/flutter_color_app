import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'package:flutter_color_app/infrastructure/theme/dark_theme.dart';
import 'package:flutter_color_app/infrastructure/theme/light_theme.dart';
import 'package:flutter_color_app/routing/app_router.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final _router = GetIt.I<AppRouter>();

  @override
  Widget build(BuildContext context) {
    Widget child = MaterialApp.router(
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      title: 'Flutter Color App',
      debugShowCheckedModeBanner: false,
      theme: LightTheme.getTheme(context),
      darkTheme: DarkTheme.getTheme(context),
    );

    if (kDebugMode) {
      child = Directionality(
        textDirection: TextDirection.ltr,
        child: Banner(
          message: 'DEBUG',
          textDirection: TextDirection.ltr,
          location: BannerLocation.bottomStart,
          child: child,
        ),
      );
    }

    return child;
  }
}
