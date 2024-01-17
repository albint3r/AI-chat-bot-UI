import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/router/app_router.dart';
import '../../../core/widgets/text/text_body.dart';

class GoSignInPageButton extends StatelessWidget {
  const GoSignInPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const TextBody("Don't have account? Sing up"),
      onPressed: () => context.router.replaceAll([
        const SignUpRoute(),
      ]),
    );
  }
}
