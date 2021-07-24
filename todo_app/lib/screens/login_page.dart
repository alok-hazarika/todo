import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/auth_providers.dart';
import 'package:todo_app/providers/login_page_providers.dart';

class LoginPage extends ConsumerWidget {
  void updateEmail(BuildContext context, String email) {
    context.read(emailProvider).state = email;
  }

  void updatePassword(BuildContext context, String pass) {
    context.read(passwordProvider).state = pass;
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final email = watch(emailProvider).state;
    final pass = watch(passwordProvider).state;
    final _auth = watch(authServicesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In for your ToDos'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 180, left: 20, right: 20),
        child: Center(
          child: Column(
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 24),
              ),
              TextField(
                onChanged: (val) => updateEmail(context, val),
                decoration: InputDecoration(hintText: 'Email'),
              ),
              TextField(
                onChanged: (val) => updatePassword(context, val),
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () => _auth.signIn(email: email, password: pass),
                  child: Text('Sign In'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
