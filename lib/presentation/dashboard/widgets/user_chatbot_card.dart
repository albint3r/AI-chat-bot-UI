import 'package:flutter/material.dart';
import 'package:tobe_cv_flutter/presentation/dashboard/widgets/single_chat_item.dart';

import '../../../domain/dashboard/user_chatbot.dart';
import '../../core/theme/const_values.dart';

class UserChatBotCard extends StatelessWidget {
  const UserChatBotCard(this.userChatBot);

  final UserChatBot userChatBot;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Card(
      color: colorScheme.onPrimary.withOpacity(.5),
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SingleChatItem('Name', userChatBot.name),
              SingleChatItem('Describe', userChatBot.description ?? ''),
              SingleChatItem('Index', userChatBot.indexName),
              SingleChatItem('Questions', userChatBot.totalQuestions.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
