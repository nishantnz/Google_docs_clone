import 'package:docs_clone/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/auth_repo.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  void signInWithGoogle(WidgetRef ref) {
    ref.read(authRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(150, 50)),
            backgroundColor: MaterialStateProperty.all(WhiteColor),
            foregroundColor: MaterialStateProperty.all(BlackColor),
          ),
          onPressed: () {
            signInWithGoogle(ref);
          },
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
