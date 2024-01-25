import 'package:reactive_forms/reactive_forms.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../core/app_error.dart';
import '../dashboard/user_chatbot.dart';
import 'chatbot_mode.dart';
import 'i_chat_conversation.dart';

abstract interface class IChatBotFacade {
  FormGroup? get formGroup;

  ChatBotMode get currMode;

  WebSocketChannel get channel;

  List<IChatConversation> getRandomNSuggestedQuestion({
    int n = 4,
  });

  List<IChatConversation> addQuestionToConversation({String? textQuestion});

  Future<List<IChatConversation>> postQuestion({
    String? textQuestion,
    required String chatId,
  });

  List<IChatConversation> getChatConversationFromWebSocket(
    dynamic data,
  );

  WebSocketChannel connectToChatAgentWebSocket();

  void disconnectToChatAgentWebSocket();

  void addEventToChatAgentWebSocket({
    String? textQuestion,
  });

  Future<(AppError?, UserChatBot?)> existChatBotInfo(String chatId);
}
