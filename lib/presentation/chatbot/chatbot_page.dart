import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../aplication/chatbot/chatbot_bloc.dart';
import '../../domain/chatbot/chatbot_mode.dart';
import '../../injectables.dart';
import '../core/widgets/app_bars/primary_app_bar.dart';
import 'widgets/body_chatbot.dart';

@RoutePage()
class ChatBotPage extends StatelessWidget {
  const ChatBotPage({
    @PathParam('chatId') required this.chatId,
  });

  final String chatId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatBotBloc>()
        ..add(
          ChatBotEvent.started(chatId),
        ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<ChatBotBloc, ChatBotState>(
            listenWhen: (pre, curr) => pre.chatBotMode != curr.chatBotMode,
            listener: (context, state) {
              if (state.chatBotMode == ChatBotMode.agent) {
                context.read<ChatBotBloc>().add(
                      const ChatBotEvent.connectToChatAgentWebSocket(),
                    );
              } else {
                context.read<ChatBotBloc>().add(
                      const ChatBotEvent.disconnectToChatAgentWebSocket(),
                    );
              }
            },
          ),
        ],
        child: const SafeArea(
          child: Scaffold(
            appBar: PrimaryAppBar(),
            body: BodyChatBot(),
          ),
        ),
      ),
    );
  }
}
