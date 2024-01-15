import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:routing_demo/routing/route_config.dart';
import 'package:routing_demo/util.dart';

@RoutePage()
class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      name: 'Demo page',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                appRouter.pop();
                appRouter.navigateNamed(Routes.login);
              },
            ),
            ElevatedButton(
              child: const Text('Home'),
              onPressed: () {
                appRouter.pop();
                appRouter.navigateNamed(Routes.home);
              },
            ),
            ElevatedButton(
              child: const Text('Profile'),
              onPressed: () {
                appRouter.pop();
                appRouter.navigateNamed(Routes.profile);
              },
            ),
            ElevatedButton(
              child: const Text('Health Dashboard'),
              onPressed: () {
                appRouter.pop();
                appRouter.navigateNamed(Routes.healthDashboard);
              },
            ),
          ],
        ),
      ),
    );
  }
}
// push - clinic
// edit profile
// profile
// home
