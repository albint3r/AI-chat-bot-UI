part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.started() = _Started;

  const factory DashboardEvent.createNewChatBot() = _CreateNewChatBot;

  const factory DashboardEvent.nextQuestion() = _NextQuestion;

  const factory DashboardEvent.backQuestion() = _BackQuestion;
}
