import 'package:flutter/material.dart';

import '../../core/widgets/lateral_bar/custom_lateral_bar.dart';
import 'new_chat_btn.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLateralBar(
      children: [
        NewChatBtn(),
      ],
    );
  }
}
