import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/const_values.dart';
import '../../../core/widgets/text/text_title.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircularProgressIndicator(),
        const Gap(padding * 2),
        TextTitle.h3('Creating ChatBot'),
      ],
    );
  }
}
