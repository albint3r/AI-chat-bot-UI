import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/chatbot/chatbot_bloc.dart';
import '../../../domain/chatbot/chatbot_mode.dart';

/// This Question send the message to the post endpoint or to the websocket
/// connection.
///
/// This provide the service to 3 areas, the text field, the grid box and
/// the lateral questions cards.
void sendQuestionByMode(
  ChatBotState chat,
  BuildContext context, {
  String? textQuestion,
}) {
  switch (chat.chatBotMode) {
    case ChatBotMode.qa:
      {
        context.read<ChatBotBloc>().add(
              ChatBotEvent.postQuestion(
                textQuestion: textQuestion,
              ),
            );
      }
    case ChatBotMode.agent:
      {
        context.read<ChatBotBloc>().add(
              ChatBotEvent.addEventToChatAgentWebSocket(
                textQuestion: textQuestion,
              ),
            );
      }
  }
}
