// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CubitColorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const CubitColorPage()),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SimpleColorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SimpleColorPage(),
      );
    },
  };
}

/// generated route for
/// [CubitColorPage]
class CubitColorRoute extends PageRouteInfo<void> {
  const CubitColorRoute({List<PageRouteInfo>? children})
      : super(
          CubitColorRoute.name,
          initialChildren: children,
        );

  static const String name = 'CubitColorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SimpleColorPage]
class SimpleColorRoute extends PageRouteInfo<void> {
  const SimpleColorRoute({List<PageRouteInfo>? children})
      : super(
          SimpleColorRoute.name,
          initialChildren: children,
        );

  static const String name = 'SimpleColorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
