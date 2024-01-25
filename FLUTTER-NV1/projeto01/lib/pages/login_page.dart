import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.1,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Login'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Senha'),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
