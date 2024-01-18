import 'user_chatbot.dart';

abstract interface class IDashBoardFacade {
  Future<List<UserChatBot>> getUserChatBots();

  Future<void> createNewIndexFromCsv();
}
