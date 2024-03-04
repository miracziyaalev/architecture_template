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
    ActivityDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ActivityDetailView(),
      );
    },
    ActivityFilledRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ActivityFilledView(),
      );
    },
    ActivityNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ActivityNavigationView(),
      );
    },
    ActivityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ActivityView(),
      );
    },
    ExploreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExploreView(),
      );
    },
    HomeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeDetailView(
          id: args.id,
          number: args.number,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainView(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileView(),
      );
    },
  };
}

/// generated route for
/// [ActivityDetailView]
class ActivityDetailRoute extends PageRouteInfo<void> {
  const ActivityDetailRoute({List<PageRouteInfo>? children})
      : super(
          ActivityDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivityDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ActivityFilledView]
class ActivityFilledRoute extends PageRouteInfo<void> {
  const ActivityFilledRoute({List<PageRouteInfo>? children})
      : super(
          ActivityFilledRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivityFilledRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ActivityNavigationView]
class ActivityNavigationRoute extends PageRouteInfo<void> {
  const ActivityNavigationRoute({List<PageRouteInfo>? children})
      : super(
          ActivityNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivityNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ActivityView]
class ActivityRoute extends PageRouteInfo<void> {
  const ActivityRoute({List<PageRouteInfo>? children})
      : super(
          ActivityRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivityRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExploreView]
class ExploreRoute extends PageRouteInfo<void> {
  const ExploreRoute({List<PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeDetailView]
class HomeDetailRoute extends PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({
    required String id,
    required int number,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeDetailRoute.name,
          args: HomeDetailRouteArgs(
            id: id,
            number: number,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailRoute';

  static const PageInfo<HomeDetailRouteArgs> page =
      PageInfo<HomeDetailRouteArgs>(name);
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({
    required this.id,
    required this.number,
    this.key,
  });

  final String id;

  final int number;

  final Key? key;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{id: $id, number: $number, key: $key}';
  }
}

/// generated route for
/// [HomeView]
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
/// [MainView]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
