import 'package:reactive_forms/reactive_forms.dart';

import 'user_chatbot.dart';

abstract interface class IDashBoardFacade {
  FormGroup get formGroup;

  int get totalForms;

  int get index;

  bool get isFinished;

  Future<List<UserChatBot>> getUserChatBots();

  Future<void> createNewIndexFromCsv();

  Future<void> getFilePicker();

  int nextQuestion();

  int backQuestion();

  void resetForm();

  Future<void> updateChatBotActiveStatus(
    UserChatBot userChatBot,
  );
}
