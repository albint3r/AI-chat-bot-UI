import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/widgets/text/text_title.dart';
import 'avatar_picture.dart';
import 'questions_row_box.dart';

class WellComeElements extends StatelessWidget {
  const WellComeElements({super.key});

  @override
  Widget build(BuildContext context) {
    const upperBrakingPoint = 570;
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AvatarPicture(),
              const Gap(20),
              TextTitle.h1('What do you want to know about Alberto?'),
            ],
          ),
        ),
        // This breaking point helps to avoid the overlap of the objects
        // inside the column. This create a cascade effect when first
        // hide the questions ros boxes and after thad the avatar picture.
        // Check also: the body chatbot
        if (size.height >= upperBrakingPoint) const QuestionsRowBox(),
      ],
    );
  }
}
