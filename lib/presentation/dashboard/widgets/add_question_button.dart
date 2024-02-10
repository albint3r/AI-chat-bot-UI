import 'package:flutter/material.dart';

import 'form_add_question/form_alert_dialog.dart';

class AddQuestionButton extends StatelessWidget {
  const AddQuestionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final response = await showDialog(
          context: context,
          builder: (context) => const FormAlertDialog(),
        );
        if (response is Map<String, Object?>) {
          print('*-' * 100);
          print(response);
          print('*-' * 100);
        }
      },
      icon: const Icon(Icons.add),
    );
  }
}
