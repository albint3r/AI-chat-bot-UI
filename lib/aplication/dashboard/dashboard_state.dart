part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required bool isLoading,
    required bool showForm,
    required List<UserChatBot> userChatBots,
    FormGroup? formGroup,
  }) = _DashboardState;

  factory DashboardState.initial() => const DashboardState(
        isLoading: true,
        showForm: true,
        userChatBots: [],
      );
}
