import 'package:flutter/material.dart';

import '../../core/widgets/text/text_title.dart';
import 'mode_dropdown_field.dart';

class TopRowIndicators extends StatelessWidget {
  const TopRowIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ModeDropDownField(),
          TextTitle.h3('V.1'),
        ],
      ),
    );
  }
}
