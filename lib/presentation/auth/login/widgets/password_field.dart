import 'package:flutter/material.dart';

import '../../../core/widgets/form_fields/custom_app_text_field.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppTexTField(
      formControlName: 'password',
      obscureText: true,
      suffixIcon: Icon(Icons.password),
    );
  }
}
