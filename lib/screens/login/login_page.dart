import 'package:flutter/material.dart';
import 'package:phlox_pacman/controllers/google_sign_in_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    GoogleSignInProvider provider = Provider.of(context);

    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () => provider.googleLogin(),
          child: Text("Login"),
        ),
      ),
    );
  }
}
