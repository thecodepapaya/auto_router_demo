import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../util.dart';

@RoutePage()
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      name: 'History Screen',
      body: Center(
        child: Text('Nothing'),
      ),
    );
  }
}
