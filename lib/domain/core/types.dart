import '../auth/app_user.dart';
import '../chatbot/i_chat_conversation.dart';

typedef Json = Map<String, dynamic>;
typedef CallBackQuestion = Future<List<IChatConversation>> Function({
  String? textQuestion,
});

typedef AuthenticationFunction = Future<AppUser> Function(String, String);
