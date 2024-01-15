import 'package:auto_route/auto_route.dart';
import 'package:routing_demo/routing/guards/auth_guard.dart';
import 'package:routing_demo/routing/guards/home_guard.dart';
import 'package:routing_demo/routing/guards/select_member_guard.dart';

import '../screens/demo_page.dart';
import '../screens/health_dashboard_screen.dart';
import '../screens/history_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/select_member_screen.dart';
import 'guards/route_logger.dart';

part 'route_config.gr.dart';

final appRouter = AppRouter();

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          initial: true,
          path: Routes.demo,
          page: DemoRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          guards: [
            RouteLogger(),
          ],
        ),
        CustomRoute(
          path: Routes.home,
          page: HomeRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          guards: [
            RouteLogger(),
            AuthGuard(),
            SelectMemberGuard(),
          ],
        ),
        CustomRoute(
          path: Routes.healthDashboard,
          page: HealthDashboardRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          guards: [
            RouteLogger(),
            AuthGuard(),
            SelectMemberGuard(),
          ],
        ),
        CustomRoute(
          path: Routes.history,
          page: HistoryRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          guards: [
            RouteLogger(),
            AuthGuard(),
            SelectMemberGuard(),
            HomeGuard(),
          ],
        ),
        CustomRoute(
          path: Routes.login,
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          guards: [
            RouteLogger(),
          ],
        ),
        CustomRoute(
          path: Routes.profile,
          page: ProfileRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          guards: [
            RouteLogger(),
            AuthGuard(),
            SelectMemberGuard(),
            HomeGuard(),
          ],
        ),
        CustomRoute(
          path: Routes.selectMember,
          page: SelectMemberRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          guards: [
            RouteLogger(),
            AuthGuard(),
          ],
        ),
      ];
}

class Routes {
  Routes._();

  static const demo = '/demo';
  static const home = '/home';
  static const healthDashboard = '/health-dashboard';
  static const history = '/history';
  static const login = '/login';
  static const profile = '/profile';
  static const selectMember = '/select-member';
}
