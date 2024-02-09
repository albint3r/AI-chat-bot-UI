import 'package:flutter/material.dart';

class AddQuestionButton extends StatelessWidget {
  const AddQuestionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => print('Add Chat'),
      icon: const Icon(Icons.add),
    );
  }
}
