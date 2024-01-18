abstract interface class IDashBoardDataSource {
  Future<void> getUserChatBots();

  Future<void> createNewIndexFromCsv();
}
