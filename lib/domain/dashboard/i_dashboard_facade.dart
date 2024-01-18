abstract interface class IDashBoardFacade {
  Future<void> getUserChatBots();

  Future<void> createNewIndexFromCsv();
}
