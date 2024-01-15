import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:routing_demo/routing/route_config.dart';

import '../util.dart';

@RoutePage()
class HealthDashboardScreen extends StatelessWidget {
  const HealthDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      name: 'Health Dashboard',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Health dashboard for {${Util.selectedMemberUid}}'),
            ElevatedButton(
              onPressed: () {
                appRouter.navigateNamed(Routes.home);
              },
              child: Text('Go to Home'),
            )
          ],
        ),
      ),
    );
  }
}
