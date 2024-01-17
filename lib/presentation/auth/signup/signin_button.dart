import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../../../aplication/signin/signup_bloc.dart';

import '../../core/widgets/forms/custom_form_consumer_btn.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  Map<String, String> _getFormValues(FormGroup? form) {
    return form!.rawValue.map(
      (k, v) => MapEntry(k, v.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignupBloc>().state;
    final form = state.formGroup;
    return CustomFormConsumerBtn(
      text: 'Signing Account',
      width: 200,
      onPress: () => context.read<AuthBloc>().add(
            AuthEvent.signInFromForm(
              _getFormValues(form),
            ),
          ),
    );
  }
}
