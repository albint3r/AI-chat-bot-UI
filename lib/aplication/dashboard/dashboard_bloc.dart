import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';
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
          index: facade.index,
          totalForms: facade.totalForms,
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
    on<_AddCsvFile>((event, emit) async {
      await facade.getFilePicker();
    });
    on<_NextQuestion>((event, emit) async {
      facade.nextQuestion();
      // This happened when the user finished the form
      if (facade.isFinished) {
        await _finishProcess(emit, facade);
        return;
      }
      // Update Form values in UI
      emit(
        state.copyWith(
          index: facade.index,
          totalForms: facade.totalForms,
          formGroup: facade.formGroup,
        ),
      );
    });
    on<_BackQuestion>((event, emit) async {
      facade.backQuestion();
      emit(
        state.copyWith(
          index: facade.index,
          totalForms: facade.totalForms,
          formGroup: facade.formGroup,
        ),
      );
    });
    on<_CloseFormDialog>((event, emit) async {
      emit(
        state.copyWith(
          showForm: false,
        ),
      );
    });
    on<_UpdateChatActiveState>((event, emit) async {
      try {
        emit(
          state.copyWith(
            isToggling: true,
          ),
        );
        await facade.updateChatBotActiveStatus(event.userChatBot);
        // Only Change the new Item for the Old to update the list without make a call to the API.
        final List<UserChatBot> newUserChatBots = List.from(state.userChatBots);
        newUserChatBots[event.chatIndex] = event.userChatBot;
        emit(
          state.copyWith(
            isToggling: false,
            userChatBots: newUserChatBots,
          ),
        );
      } catch (e) {
        l.i('Fatal Error: $e');
        emit(
          state.copyWith(
            userChatBots: [],
            isLoading: false,
          ),
        );
      }
    });
    on<_DeleteChatBot>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      await facade.deleteUserChatBot(event.userChatBot);
      final userChatBots = await facade.getUserChatBots();
      emit(
        state.copyWith(
          isLoading: false,
          userChatBots: userChatBots,
        ),
      );
    });
  }

  Future<void> _finishProcess(
    Emitter<DashboardState> emit,
    IDashBoardFacade facade,
  ) async {
    emit(
      state.copyWith(
        isFinished: facade.isFinished,
      ),
    );
    await facade.createNewIndexFromCsv();
    facade.resetForm();
    final userChatBots = await facade.getUserChatBots();
    emit(
      state.copyWith(
        formGroup: facade.formGroup,
        index: facade.totalForms,
        totalForms: facade.totalForms,
        showForm: false,
        isLoading: false,
        isFinished: false,
        userChatBots: userChatBots,
      ),
    );
  }
}
