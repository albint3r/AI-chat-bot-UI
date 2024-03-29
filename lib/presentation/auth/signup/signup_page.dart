import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../../../aplication/signin/signup_bloc.dart';
import '../../../domain/auth/errors/auth_error.dart';
import '../../../injectables.dart';
import 'body_signup.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignupBloc>()
        ..add(
          const SignupEvent.started(),
        ),
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (pre, curr) =>
            pre.error != curr.error && curr.error?.type == AuthErrorType.signUp,
        listener: (context, state) => context.read<SignupBloc>().add(
              SignupEvent.setError(
                state.error!,
              ),
            ),
        child: const SafeArea(
          child: Scaffold(
            body: BodySignUp(),
          ),
        ),
      ),
    );
  }
}
