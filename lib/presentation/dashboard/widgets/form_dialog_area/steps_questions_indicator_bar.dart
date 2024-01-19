import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../core/theme/const_values.dart';
import '../../../core/widgets/text/text_body.dart';

class StepsQuestionsIndicatorBar extends StatelessWidget {
  const StepsQuestionsIndicatorBar({
    required this.index,
    required this.steps,
    super.key,
  });

  final int index;
  final int steps;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final currStep = index + 1;
    return Padding(
      padding: const EdgeInsets.all(padding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearPercentIndicator(
            barRadius: const Radius.circular(15),
            width: 300.0,
            lineHeight: 20,
            percent: (currStep / steps).clamp(0, 1),
            backgroundColor: colorScheme.onPrimary,
            progressColor: colorScheme.primary,
            center: TextBody(
              "$currStep/$steps",
              color: colorScheme.background,
            ),
          ),
        ],
      ),
    );
  }
}
