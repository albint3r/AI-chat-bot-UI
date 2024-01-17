import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'body_signup.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodySignUp();
  }
}
