import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onChanged: (val) {},
                decoration: InputDecoration(hintText: 'Email'),
              ),
              TextField(
                onChanged: (val) {},
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
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
