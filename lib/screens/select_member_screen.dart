import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:routing_demo/routing/route_config.dart';

import '../util.dart';

@RoutePage<String>()
class SelectMemberScreen extends StatelessWidget {
  const SelectMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      name: 'Select Member',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                appRouter.pop('1');
              },
              child: Text('Member 1'),
            ),
            ElevatedButton(
              onPressed: () {
                appRouter.pop('2');
              },
              child: Text('Member 2'),
            ),
            ElevatedButton(
              onPressed: () {
                appRouter.pop('3');
              },
              child: Text('Member 3'),
            ),
            ElevatedButton(
              onPressed: () {
                appRouter.pop('4');
              },
              child: Text('Member 4'),
            ),
          ],
        ),
      ),
    );
  }
}
