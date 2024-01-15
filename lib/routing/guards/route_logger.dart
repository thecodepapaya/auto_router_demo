import 'dart:developer';

import 'package:auto_route/auto_route.dart';

class RouteLogger extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    log(router.stack.map((e) => e.name).join(',') + ',${router.currentPath}',
        name: 'route');

    resolver.next(true);
  }
}
