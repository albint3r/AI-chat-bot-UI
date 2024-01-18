import 'package:flutter/material.dart';

import '../../../domain/dashboard/user_chatbot.dart';
import '../../core/theme/const_values.dart';
import 'is_active_chat_toggle_switch.dart';
import 'single_chat_item.dart';

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
              SingleChatItem(
                'Name',
                userChatBot.name,
                const Icon(Icons.folder),
              ),
              SingleChatItem(
                'Describe',
                userChatBot.description ?? '',
                const Icon(Icons.description),
              ),
              SingleChatItem(
                'Index',
                userChatBot.indexName,
                const Icon(Icons.info),
              ),
              SingleChatItem(
                'Questions',
                userChatBot.totalQuestions.toString(),
              ),
              IsActiveChatToggleSwitch(userChatBot.isActive),
            ],
          ),
        ),
      ),
    );
  }
}
