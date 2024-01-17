import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/login/login_form_bloc.dart';
import '../../../core/widgets/forms/custom_form_consumer_btn.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginFormBloc>().state;
    final form = state.formGroup;
    return CustomFormConsumerBtn(
      text: 'Login Account',
      width: 200,
      onPress: () => print('Evento login'),
    );
  }
}
