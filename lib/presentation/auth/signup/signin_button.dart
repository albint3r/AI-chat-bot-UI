import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/signin/signup_bloc.dart';

import '../../core/widgets/forms/custom_form_consumer_btn.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignupBloc>().state;
    final form = state.formGroup;
    return CustomFormConsumeBtn(
      text: 'Signing Account',
      width: 200,
      onPress: () => print('SingIn Event'),
    );
  }
}
