part of 'chatbot_bloc.dart';

@freezed
class ChatBotState with _$ChatBotState {
  const factory ChatBotState({
    required bool isLoading,
    required bool isFetching,
    required String chatId,
    required ChatBotMode chatBotMode,
    required List<IChatConversation> chatConversation,
    required List<IChatConversation> suggestedQuestions,
    FormGroup? formGroup,
    AppError? appError,
  }) = _ChatBotState;

  factory ChatBotState.initial() => const ChatBotState(
        isLoading: true,
        isFetching: false,
        chatId: '',
        chatBotMode: ChatBotMode.qa,
        chatConversation: [],
        suggestedQuestions: [],
      );
}
