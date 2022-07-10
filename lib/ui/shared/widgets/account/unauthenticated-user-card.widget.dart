import 'package:flutter/material.dart';
import '../../../android/pages/login.page.dart';
import 'package:shopping/ui/android/pages/signup.page.dart';

class UnauthenticatedUserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const SizedBox(
          height: 60,
        ),
        FlatButton(
          child: const Text("Autentique-se"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
        ),
        FlatButton(
          child: const Text("Ainda não sou cadastrado"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
