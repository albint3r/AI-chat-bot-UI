import 'package:flutter/material.dart';

import '../../../core/widgets/text/text_body.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print('Back'),
      child: const TextBody('Back'),
    );
  }
}
