import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobe_cv_flutter/presentation/auth/signup/signin_button.dart';

import '../../../../domain/auth/errors/auth_error.dart';
import '../../../aplication/signin/signup_bloc.dart';
import '../../core/widgets/forms/custom_type1_form.dart';

import '../login/widgets/email_field.dart';
import '../login/widgets/password_field.dart';
import 'confirm_password_field.dart';
import 'login_page_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final form = context.watch<SignupBloc>().state;
    final error = form.error;
    return CustomType1Form(
      formGroup: form.formGroup!,
      listFields: const [
        EmailField(),
        PasswordField(),
        ConfirmPasswordField(),
      ],
      listButtons: const [
        SignInButton(),
        LoginPageButton(),
      ],
      showError: error?.type == AuthErrorType.logIn,
      textError: error?.errorMsg,
    );
  }
}
