import 'package:flutter/material.dart';
import 'package:projeto01/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();

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
              onChanged: _controller.setLogin,
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
              onChanged: _controller.setPass,
            ),
            SizedBox(
              height: 40,
            ),
            ValueListenableBuilder<bool>(
              valueListenable: _controller.inLoader,
              builder: (_, inLoader, __) => inLoader
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _controller.auth().then((result) {
                          if (result) {
                            print('sucess');
                          } else {
                            print('failed');
                          }
                        });
                      },
                      child: Text('Login')),
            )
          ],
        ),
      ),
    );
  }
}
