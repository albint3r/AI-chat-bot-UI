import 'package:web_socket_channel/web_socket_channel.dart';

import 'answer.dart';

abstract interface class IChatBotDataSource {
  Future<Answer> postQuestionQA(
    String question,
    String chatId,
  );

  WebSocketChannel connectToChatAgentWebSocket(String chatId);
}
