import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/router/app_router.dart';

class LoginPageButton extends StatelessWidget {
  const LoginPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text("You have an account? Login"),
      onPressed: () => context.router.replaceAll([
        const LoginRoute(),
      ]),
    );
  }
}
