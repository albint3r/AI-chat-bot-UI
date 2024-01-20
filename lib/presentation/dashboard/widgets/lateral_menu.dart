import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/widgets/lateral_bar/custom_lateral_bar.dart';
import 'logout_btn.dart';
import 'new_chat_btn.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLateralBar(
      children: [
        NewChatBtn(),
        // I Only add the expand on the gap to split the Element in the column
        Expanded(
          child: Gap(10),
        ),
        LogOutBtn(),
      ],
    );
  }
}
