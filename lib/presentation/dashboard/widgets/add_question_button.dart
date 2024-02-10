import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../domain/dashboard/user_chatbot.dart';
import 'form_add_question/form_alert_dialog.dart';

class AddQuestionButton extends StatelessWidget {
  const AddQuestionButton({
    super.key,
    required this.userChatBot,
  });

  final UserChatBot userChatBot;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final data = await showDialog(
          context: context,
          builder: (context) => const FormAlertDialog(),
        );
        if (data is Map<String, Object?>) {
          context.read<DashboardBloc>().add(
                DashboardEvent.addSingleQuestionToChatBot(
                  userChatBot,
                  data,
                ),
              );
        }
      },
      icon: const Icon(Icons.add),
    );
  }
}
