import 'package:flutter/material.dart';

class Util {
  Util._();

  static bool isAuthenticated = false;
  static String selectedMemberUid = '';
}

void onLogin() {
  Util.isAuthenticated = true;
}

void onLogout() {
  Util.isAuthenticated = false;
  Util.selectedMemberUid = '';
}

void onSelectMember(String uid) {
  Util.selectedMemberUid = uid;
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    super.key,
    required this.name,
    this.body,
  });

  final Widget? body;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: body,
    );
  }
}
