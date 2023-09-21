import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wtf_gym_assignment/presentation/screens/gym_listing_screen/gym_listing_screen.dart';

import '../../presentation/screens/filter_screen/filter_screen.dart';
import 'app_route_constants.dart';

class AppRoute {
  GoRouter? router;
  static final AppRoute _inst = AppRoute._internal();
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  factory AppRoute() {
    _inst.router ??= GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: [
        GoRoute(
          name: '/',
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: GymListingScreen(),
            );
          },
        ),
        GoRoute(
          name: filterScreenRoute,
          path: filterScreenRoute,
          pageBuilder: (context, state) {
            return const MaterialPage(child: FilterScreen());
          },
        ),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: Scaffold());
      },
    );
    return _inst;
  }
  AppRoute._internal();
}
