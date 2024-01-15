import 'package:auto_route/auto_route.dart';
import 'package:routing_demo/routing/route_config.dart';
import 'package:routing_demo/util.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if (Util.isAuthenticated) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      final val = await appRouter.push<bool>(const LoginRoute());

      final isLoggedIn = val ?? false;

      if (isLoggedIn) onLogin();

      resolver.next(isLoggedIn);
    }
  }
}
