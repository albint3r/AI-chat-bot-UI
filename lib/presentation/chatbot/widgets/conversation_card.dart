import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../domain/chatbot/answer.dart';
import '../../../domain/chatbot/answer_loading.dart';
import '../../../domain/chatbot/i_chat_conversation.dart';
import '../../core/theme/const_values.dart';
import '../../core/widgets/text/text_body.dart';
import '../../core/widgets/text/text_title.dart';
import '../../gen/assets.gen.dart';

class ConversationCard extends StatelessWidget {
  const ConversationCard({
    super.key,
    required this.chatConversation,
  });

  final IChatConversation chatConversation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Only show the avatar if is an Answer
              if (chatConversation is Answer ||
                  chatConversation is AnswerLoading)
                CircleAvatar(
                  radius: borderRadius,
                  backgroundImage: Assets.images.avatar.provider(),
                )
              else
                CircleAvatar(
                  backgroundColor: colorScheme.primary,
                  radius: borderRadius,
                  child: const TextBody('G'),
                ),
              const Gap(padding * 2),
              // Only show the Name if is an Answer
              TextTitle.h3(
                chatConversation is Answer || chatConversation is AnswerLoading
                    ? 'Alberto Ortiz:'
                    : 'Guess:',
              ),
            ],
          ),
          Row(
            children: [
              const Gap(padding * 8),
              // Show loading indicator instate of the text response
              // until the API return a text response.
              if (chatConversation is AnswerLoading)
                const CircularProgressIndicator()
              else
                Expanded(
                  child: TextBody(chatConversation.text),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
