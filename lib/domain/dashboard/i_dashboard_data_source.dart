import 'dart:typed_data';

import 'user_chatbot.dart';

abstract interface class IDashBoardDataSource {
  Future<List<UserChatBot>> getUserChatBots();

  Future<void> createNewIndexFromCsv(Uint8List fileBytes);
}
