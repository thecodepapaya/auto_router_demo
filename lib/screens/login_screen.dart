import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:routing_demo/routing/route_config.dart';

import '../util.dart';

@RoutePage<bool>()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      name: 'Login screen',
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            appRouter.pop(true);
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
