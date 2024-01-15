import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:routing_demo/routing/route_config.dart';

import '../util.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  // final bool data;

  const HomePage({
    super.key,
    //  required this.data
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    log('InitState for HOME');
  }

  @override
  Widget build(BuildContext context) {
    log('build for HOME');

    return MyScaffold(
      name: 'Home screen {${Util.selectedMemberUid}}',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                appRouter.pushNamed(Routes.profile);
              },
              child: Text('Go To Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                appRouter.pushNamed(Routes.history);
              },
              child: Text('Go To History'),
            ),
            ElevatedButton(
              onPressed: () {
                appRouter.popUntil((route) => false);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
