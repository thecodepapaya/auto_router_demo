import 'package:auto_route/auto_route.dart';
import 'package:routing_demo/routing/route_config.dart';

class HomeGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final homeRouteIndex = router.stack.indexWhere(
      (route) => route.name == Routes.home,
    );

    final isHomeRouteMissingOnStack =
        router.currentPath != Routes.home && homeRouteIndex == -1;

    if (isHomeRouteMissingOnStack) {
      appRouter.pushAndPopUntil(
        HomeRoute(),
        predicate: (route) => false,
      );
    }

    await Future.delayed(Duration.zero);

    resolver.next(true);
  }
}
