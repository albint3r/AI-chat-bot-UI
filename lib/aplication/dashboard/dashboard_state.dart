part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required bool isLoading,
    required List<UserChatBot> userChatBots,
    required bool showForm,
    required bool isFinished,
    required bool isToggling,
    required int index,
    required int totalForms,
    FormGroup? formGroup,
  }) = _DashboardState;

  factory DashboardState.initial() => const DashboardState(
        isLoading: true,
        showForm: false,
        isFinished: false,
        isToggling: false,
        userChatBots: [],
        totalForms: -1,
        index: 0,
      );
}
