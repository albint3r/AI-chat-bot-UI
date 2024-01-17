import 'package:flutter/material.dart';

import '../../../core/widgets/form_fields/custom_app_text_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppTexTField(
      formControlName: 'email',
      suffixIcon: Icon(Icons.email),
    );
  }
}
