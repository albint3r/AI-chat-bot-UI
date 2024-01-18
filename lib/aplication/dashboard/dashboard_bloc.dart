import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/dashboard/i_dashboard_facade.dart';
import '../../domain/dashboard/user_chatbot.dart';

part 'dashboard_bloc.freezed.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(IDashBoardFacade facade) : super(DashboardState.initial()) {
    on<_Started>((event, emit) async {
      final userChatBots = await facade.getUserChatBots();
      final form = facade.formGroup;
      emit(
        state.copyWith(
          isLoading: false,
          formGroup: form,
          userChatBots: userChatBots,
        ),
      );
    });
    on<_CreateNewChatBot>((event, emit) async {
      emit(
        state.copyWith(
          showForm: true,
        ),
      );
    });
  }
}
