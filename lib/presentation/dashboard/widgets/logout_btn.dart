import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../../core/widgets/text/text_body.dart';

class LogOutBtn extends StatelessWidget {
  const LogOutBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.read<AuthBloc>().add(
            const AuthEvent.logOut(),
          ),
      child: const TextBody('LogOut'),
    );
  }
}
