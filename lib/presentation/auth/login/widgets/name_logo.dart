import 'package:flutter/material.dart';

import '../../../core/widgets/text/text_title.dart';

class NameLogo extends StatelessWidget {
  const NameLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: TextTitle.h1(
        'ChatAI',
        color: colorScheme.onSecondary,
      ),
    );
  }
}
