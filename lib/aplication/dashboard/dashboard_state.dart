part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required bool isLoading,
    required List<UserChatBot> userChatBots,
    required bool showForm,
    required int index,
    required int totalForms,
    FormGroup? formGroup,
  }) = _DashboardState;

  factory DashboardState.initial() => const DashboardState(
        isLoading: true,
        showForm: true,
        userChatBots: [],
        totalForms: -1,
        index: 0,
      );
}
