import 'package:web_socket_channel/web_socket_channel.dart';

import '../core/app_error.dart';
import '../dashboard/user_chatbot.dart';
import 'answer.dart';

abstract interface class IChatBotDataSource {
  Future<Answer> postQuestionQA(
    String question,
    String chatId,
  );

  Future<(AppError?, UserChatBot?)> existChatBotInfo(
    String chatId,
  );

  WebSocketChannel connectToChatAgentWebSocket(String chatId);
}
