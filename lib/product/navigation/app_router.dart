import 'package:architecture_template/feature/dashboard/activityy/activity_detail_view.dart';
import 'package:architecture_template/feature/dashboard/activityy/activity_filled_view.dart';
import 'package:architecture_template/feature/dashboard/activityy/activity_navigation_route_view.dart';
import 'package:architecture_template/feature/dashboard/activityy/activity_view.dart';
import 'package:architecture_template/feature/dashboard/explore_view.dart';
import 'package:architecture_template/feature/dashboard/main_view.dart';
import 'package:architecture_template/feature/dashboard/profile_view.dart';
import 'package:architecture_template/feature/home/view/home_detail_view.dart';
import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// This class is used to generate the routes for the application.
final class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: false),
        AutoRoute(page: HomeDetailRoute.page),
        AutoRoute(path: "/main", page: MainRoute.page, initial: true, children: [
          AutoRoute(page: ActivityNavigationRoute.page, initial: false, children: [
            AutoRoute(page: ActivityRoute.page, initial: true),
            AutoRoute(page: ActivityDetailRoute.page),
          ]),
          AutoRoute(page: ExploreRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
      ];
}
