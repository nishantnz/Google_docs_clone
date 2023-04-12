import 'package:docs_clone/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(150, 50)),
            backgroundColor: MaterialStateProperty.all(WhiteColor),
            foregroundColor: MaterialStateProperty.all(BlackColor),
          ),
          onPressed: () {},
          icon: Image.asset(
            "assets/images/g_logo.png",
            height: 20,
          ),
          label: Text("Sign in with Google"),
        ),
      ),
    );
  }
}
