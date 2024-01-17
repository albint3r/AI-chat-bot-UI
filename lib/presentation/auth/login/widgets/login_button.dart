import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/auth/auth_bloc.dart';
import '../../../../aplication/login/login_form_bloc.dart';
import '../../../core/widgets/forms/custom_form_consumer_btn.dart';
import 'package:reactive_forms/src/models/models.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  Map<String, String> _getFormValues(FormGroup? form) {
    return form!.rawValue.map(
      (k, v) => MapEntry(k, v.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginFormBloc>().state;
    final form = state.formGroup;

    return CustomFormConsumerBtn(
      text: 'Login Account',
      //todo: with button don't work
      width: 200,
      onPress: () => context.read<AuthBloc>().add(
            AuthEvent.logInFromForm(
              _getFormValues(form),
            ),
          ),
    );
  }
}
