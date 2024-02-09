import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../domain/dashboard/user_chatbot.dart';
import '../../core/widgets/text/text_body.dart';
import '../../core/widgets/text/text_title.dart';

class DeleteChatButton extends StatelessWidget {
  const DeleteChatButton({required this.userChatBot});

  final UserChatBot userChatBot;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final response = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: TextTitle.h2('Are you sure you want to delete?'),
              content: const TextBody(
                'If you proceed you are going to delete forever this chat-bot.',
              ),
              actions: [
                TextButton(
                  onPressed: () => context.router.pop(true),
                  child: const TextBody('Delete'),
                ),
                TextButton(
                  onPressed: () => context.router.pop(false),
                  child: const TextBody('Cancel'),
                ),
              ],
            );
          },
        );
        if (response ?? false) {
          context.read<DashboardBloc>().add(
                DashboardEvent.deleteChatBot(userChatBot),
              );
        }
      },
      icon: Icon(Icons.close),
    );
  }
}
