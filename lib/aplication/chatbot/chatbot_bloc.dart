import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/chatbot/i_chat_conversation.dart';
import '../../domain/chatbot/i_chatbot_facade.dart';

part 'chatbot_bloc.freezed.dart';

part 'chatbot_event.dart';

part 'chatbot_state.dart';

@injectable
class ChatBotBloc extends Bloc<ChatBotEvent, ChatBotState> {
  ChatBotBloc(IChatBotFacade facade) : super(ChatBotState.initial()) {
    on<_Started>((event, emit) {
      final suggestedQuestions = facade.getRandomNSuggestedQuestion();
      emit(
        state.copyWith(
          formGroup: facade.formGroup,
          suggestedQuestions: suggestedQuestions,
          isLoading: false,
        ),
      );
    });
    on<_PostQuestion>((event, emit) async {
      // Add Question to logs
      final newQuestion = facade.addQuestionToConversation(
        textQuestion: event.textQuestion,
      );
      emit(
        state.copyWith(
          chatConversation: List.from(newQuestion),
        ),
      );
      // Add Answer to logs
      final newAnswer = await facade.postQuestion(
        textQuestion: event.textQuestion,
      );
      if (newAnswer.isNotEmpty) {
        emit(
          state.copyWith(
            chatConversation: List.from(newAnswer),
          ),
        );
      }
    });
  }
}
