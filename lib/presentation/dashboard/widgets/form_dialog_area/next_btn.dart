import 'package:flutter/material.dart';

import '../../../core/widgets/text/text_body.dart';

class NextBtn extends StatelessWidget {
  const NextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print('Next'),
      child: const TextBody('Next'),
    );
  }
}
