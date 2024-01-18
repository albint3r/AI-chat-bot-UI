import 'package:flutter/material.dart';

import '../../core/theme/const_values.dart';
import '../../core/widgets/text/text_body.dart';

class NewChatBtn extends StatelessWidget {
  const NewChatBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: ElevatedButton(
        onPressed: () => print('Hello'),
        child: const TextBody('New Chatbot'),
      ),
    );
  }
}
