part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required bool isLoading,
  }) = _DashboardState;

  factory DashboardState.initial() => const DashboardState(isLoading: true);
}
