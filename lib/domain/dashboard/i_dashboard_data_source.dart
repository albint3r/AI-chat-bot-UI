import 'dart:typed_data';

import 'user_chatbot.dart';

abstract interface class IDashBoardDataSource {
  Future<List<UserChatBot>> getUserChatBots();

  Future<void> createNewIndexFromCsv(
    Uint8List fileBytes,
    Map<String, String> queryParams,
  );

  Future<void> updateChatBotActiveStatus(
    bool isActive,
    String chatBotId,
  );

  Future<void> deleteUserChatBot(UserChatBot userChatBot);

  Future<void> addSingleQuestionToChatBot(
    UserChatBot userChatBot,
    (String, String) qa,
  );
}
