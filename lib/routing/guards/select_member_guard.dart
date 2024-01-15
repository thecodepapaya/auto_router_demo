import 'package:auto_route/auto_route.dart';
import 'package:routing_demo/routing/route_config.dart';
import 'package:routing_demo/util.dart';

class SelectMemberGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (Util.selectedMemberUid.isNotEmpty) {
      resolver.next(true);
    } else {
      final val = await appRouter.push<String>(const SelectMemberRoute());

      final isSelected = (val ?? '').isNotEmpty;

      if (isSelected) onSelectMember(val!);

      resolver.next(isSelected);
    }
  }
}
