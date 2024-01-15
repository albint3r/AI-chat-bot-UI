import '../chatbot/i_chat_conversation.dart';

typedef Json = Map<String, dynamic>;
typedef CallBackQuestion = Future<List<IChatConversation>> Function({
  String? textQuestion,
});
