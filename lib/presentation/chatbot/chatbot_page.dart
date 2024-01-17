import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../aplication/auth/auth_bloc.dart';
import '../../aplication/chatbot/chatbot_bloc.dart';
import '../../domain/chatbot/chatbot_mode.dart';
import '../../injectables.dart';
import '../core/router/app_router.dart';
import '../core/widgets/text/text_title.dart';
import 'widgets/body_chatbot.dart';

@RoutePage()
class ChatBotPage extends StatelessWidget {
  const ChatBotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatBotBloc>()
        ..add(
          const ChatBotEvent.started(),
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
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: TextTitle.h3('Chat Bot'),
              actions: [
                TextButton(
                  onPressed: () => context.read<AuthBloc>().add(
                        const AuthEvent.logOut(),
                      ),
                  child: const Text('LogOut'),
                ),
                TextButton(
                  onPressed: () => context.router.push(
                    const LoginRoute(),
                  ),
                  child: const Text('Go Dashboard'),
                ),
              ],
            ),
            body: const BodyChatBot(),
          ),
        ),
      ),
    );
  }
}
