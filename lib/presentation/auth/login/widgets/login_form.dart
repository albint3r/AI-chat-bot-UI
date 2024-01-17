import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/login/login_form_bloc.dart';
import '../../../../domain/auth/errors/auth_error.dart';
import '../../../core/widgets/forms/custom_type1_form.dart';
import 'email_field.dart';
import 'go_signin_page_button.dart';
import 'login_button.dart';
import 'password_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final form = context.watch<LoginFormBloc>().state;
    final error = form.error;
    return CustomType1Form(
      formGroup: form.formGroup!,
      listFields: const [
        EmailField(),
        PasswordField(),
      ],
      listButtons: const [
        LogInButton(),
        GoSignInPageButton(),
      ],
      showError: error?.type == AuthErrorType.logIn,
      textError: error?.errorMsg,
    );
  }
}
