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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Todo homepage',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[700],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'demo text',
                    style: TextStyle(backgroundColor: Colors.blue[300]),
                  ),
                  Text(
                    'demo text2',
                    style: TextStyle(backgroundColor: Colors.blue[300]),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => _auth.signout(),
              child: Text('Sign out'),
            )
          ],
        ));
  }
}
