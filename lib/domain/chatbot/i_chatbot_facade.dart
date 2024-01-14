import 'package:reactive_forms/reactive_forms.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
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
  });

  WebSocketChannel connectToChatAgentWebSocket();
}
