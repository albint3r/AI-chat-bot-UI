import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/chatbot/answer_loading.dart';
import '../../domain/chatbot/chatbot_mode.dart';
import '../../domain/chatbot/i_chat_conversation.dart';
import '../../domain/chatbot/i_chatbot_facade.dart';
import '../../domain/core/app_error.dart';
import '../../domain/dashboard/user_chatbot.dart';

part 'chatbot_bloc.freezed.dart';

part 'chatbot_event.dart';

part 'chatbot_state.dart';

@injectable
class ChatBotBloc extends Bloc<ChatBotEvent, ChatBotState> {
  ChatBotBloc(IChatBotFacade facade) : super(ChatBotState.initial()) {
    on<_Started>((event, emit) async {
      final suggestedQuestions = facade.getRandomNSuggestedQuestion();
      // avoid to put the default name at the beginning.

      final chatId = event.chatId == ':chatId' ? 'home' : event.chatId;
      final (appError, userChatBot) = await facade.existChatBotInfo(chatId);
      //  Todo: Implement App error if exist
      emit(
        state.copyWith(
          formGroup: facade.formGroup,
          suggestedQuestions: suggestedQuestions,
          isLoading: false,
          chatId: chatId,
        ),
      );
    });
    on<_PostQuestion>((event, emit) async {
      if (!state.isFetching) {
        _sendQuestion(
          facade,
          emit,
          event.textQuestion,
        );
        // Add Answer to logs
        final newAnswer = await facade.postQuestion(
          textQuestion: event.textQuestion,
          chatId: state.chatId,
        );
        if (newAnswer.isNotEmpty) {
          emit(
            state.copyWith(
              chatConversation: List.from(newAnswer),
              isFetching: false,
            ),
          );
        }
      }
    });
    on<_AddEventToChatAgentWebSocket>((event, emit) async {
      if (!state.isFetching) {
        _sendQuestion(
          facade,
          emit,
          event.textQuestion,
        );
        // Only send the question to the Socket pool connection
        facade.addEventToChatAgentWebSocket(
          textQuestion: event.textQuestion,
        );
      }
    });
    on<_ChangeMode>((event, emit) {
      emit(
        state.copyWith(
          chatBotMode: facade.currMode,
        ),
      );
    });
    on<_DisconnectToChatAgentWebSocket>(
      (event, emit) => facade.disconnectToChatAgentWebSocket(),
    );
    on<_ConnectToChatAgentWebSocket>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      final channel = facade.connectToChatAgentWebSocket();
      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
      await emit.forEach(
        channel.stream,
        onData: (data) => state.copyWith(
          chatConversation: facade.getChatConversationFromWebSocket(data),
          isFetching: false,
        ),
      );
    });
  }

  void _sendQuestion(
    IChatBotFacade facade,
    Emitter<ChatBotState> emit,
    String? textQuestion,
  ) {
    final newQuestion = facade.addQuestionToConversation(
      textQuestion: textQuestion,
    );
    // Adding this extra line we create the effect of [loading] after the user
    // made a query. It use a [answerLoading] Entity, this entity only inform
    // the presentation to use the typing of the class to if else statement
    // and put the loading instated of the text of the user
    // [because this list is created HERE] it will be updated
    // when the API response, this will create the effect of the end
    // of the loading stage.
    final answerLoadingConversation = List<IChatConversation>.from(
      [...newQuestion, const AnswerLoading(text: '')],
    );
    emit(
      state.copyWith(
        chatConversation: answerLoadingConversation,
        isFetching: true,
      ),
    );
  }
}
