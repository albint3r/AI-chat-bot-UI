import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../aplication/chatbot/chatbot_bloc.dart';
import '../../../domain/core/app_error.dart';
import '../../core/theme/const_values.dart';
import '../../core/widgets/text/text_title.dart';
import 'conversation_area.dart';
import 'lateralQuestionArea.dart';
import 'query_text_field.dart';
import 'top_row_indicators.dart';
import 'wellcome_elements.dart';

class BodyChatBot extends StatelessWidget {
  const BodyChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    final chat = context.watch<ChatBotBloc>().state;
    final size = MediaQuery.of(context).size;
    if (chat.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    // Todo: I could remove this and create a new page.
    // and when the error only trigger to navigate to that page.
    if (chat.appError is AppError) {
      return Center(
        child: TextTitle.h1('Error 404'),
      );
    }
    const lateralBrakingPoint = screenBreakingPoint + lateralContainerWith;
    const upperBrakingPoint = 430;
    // This Row only work to create the effect in the lateral Area.
    return Row(
      children: [
        // This breaking point helps to avoid the overlap of the objects
        // inside the column. This create a cascade effect when first
        // hide the questions ros boxes and after thad the avatar picture.
        // Check also: the Welcome elements to see the implementation there.
        if (size.width >= lateralBrakingPoint) const LateralQuestionArea(),
        Expanded(
          child: Column(
            children: [
              const TopRowIndicators(),
              const Gap(20),
              if (chat.chatConversation.isNotEmpty ||
                  size.height <= upperBrakingPoint)
                const Expanded(
                  child: ConversationArea(),
                )
              else
                const Expanded(
                  child: WellComeElements(),
                ),
              const Gap(10),
              const QueryTextField(),
              const Gap(40),
            ],
          ),
        ),
      ],
    );
  }
}
