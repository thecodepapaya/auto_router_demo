import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:routing_demo/routing/route_config.dart';

import '../util.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      name: 'Profile screen',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                appRouter.pushNamed(Routes.healthDashboard);
              },
              child: Text('Go To Health Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
