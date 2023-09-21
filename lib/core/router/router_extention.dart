import 'package:go_router/go_router.dart';

extension GoRouterExtension on GoRouter {
  void popUntil(String path) {
    while (canPop()) {
      final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
      final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
          ? lastMatch.matches
          : routerDelegate.currentConfiguration;
      String location = matchList.uri.toString();
      if (location == path) {
        break;
      } else {
        pop();
      }
    }
  }
}
