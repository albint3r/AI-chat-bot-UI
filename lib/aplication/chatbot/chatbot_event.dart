part of 'chatbot_bloc.dart';

@freezed
class ChatBotEvent with _$ChatBotEvent {
  const factory ChatBotEvent.started() = _Started;

  const factory ChatBotEvent.postQuestion({
    String? textQuestion,
  }) = _PostQuestion;

  const factory ChatBotEvent.changeMode() = _ChangeMode;

  const factory ChatBotEvent.connectToChatAgentWebSocket() =
      _ConnectToChatAgentWebSocket;

  const factory ChatBotEvent.disconnectToChatAgentWebSocket() =
      _DisconnectToChatAgentWebSocket;

  const factory ChatBotEvent.addEventToChatAgentWebSocket({
    String? textQuestion,
  }) = _AddEventToChatAgentWebSocket;
}
