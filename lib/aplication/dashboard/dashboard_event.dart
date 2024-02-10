part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.started() = _Started;

  const factory DashboardEvent.createNewChatBot() = _CreateNewChatBot;

  const factory DashboardEvent.addCsvFile() = _AddCsvFile;

  const factory DashboardEvent.nextQuestion() = _NextQuestion;

  const factory DashboardEvent.backQuestion() = _BackQuestion;

  const factory DashboardEvent.closeFormDialog() = _CloseFormDialog;

  const factory DashboardEvent.updateChatActiveState(
    UserChatBot userChatBot,
    int chatIndex,
  ) = _UpdateChatActiveState;


  const factory DashboardEvent.deleteChatBot(
      UserChatBot userChatBot,
      ) = _DeleteChatBot;

}
