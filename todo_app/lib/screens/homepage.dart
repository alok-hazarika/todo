import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/auth_providers.dart';

class Homepage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _auth = watch(authServicesProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('Manage your ToDos'),
        ),
        body: Column(
          children: [
            Text('Todo homepage'),
            ElevatedButton(
              onPressed: () => _auth.signout(),
              child: Text('Sign out'),
            )
          ],
        ));
  }
}
