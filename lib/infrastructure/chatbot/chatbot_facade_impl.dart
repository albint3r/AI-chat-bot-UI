import 'dart:convert';
import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/models/models.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../domain/chatbot/answer.dart';
import '../../domain/chatbot/chatbot_mode.dart';
import '../../domain/chatbot/i_chat_conversation.dart';
import '../../domain/chatbot/i_chatbot_data_source.dart';
import '../../domain/chatbot/i_chatbot_facade.dart';
import '../../domain/chatbot/question.dart';
import '../../domain/core/app_error.dart';
import '../../domain/core/types.dart';
import '../../domain/dashboard/user_chatbot.dart';
import '../../presentation/core/theme/const_values.dart';

@Injectable(as: IChatBotFacade)
class ChatBotFacadeImpl implements IChatBotFacade {
  ChatBotFacadeImpl(this._dataSource);

  final chatConversation = <IChatConversation>[];
  final IChatBotDataSource _dataSource;

  final _formGroup = FormGroup(
    {
      'chat': FormGroup({
        'question': FormControl<String>(value: ''),
      }),
      'mode': FormGroup({
        'modes': FormControl<ChatBotMode>(value: ChatBotMode.qa),
      }),
    },
  );

  final _suggestedQuestions = allQuestion['alberto-cv']!;

  late final FormGroup _chatForm = _formGroup.control('chat') as FormGroup;
  late final FormGroup _mode = _formGroup.control('mode') as FormGroup;
  late WebSocketChannel _channel;

  @override
  FormGroup? get formGroup => _formGroup;

  // Extract the value of the Modes FormGroup
  @override
  ChatBotMode get currMode => _mode.control('modes').value as ChatBotMode;

  // Chat websocket Channel:
  @override
  WebSocketChannel get channel => _channel;

  @override
  Future<List<IChatConversation>> postQuestion({
    String? textQuestion,
    required String chatId,
  }) async {
    final control = _chatForm.control('question');
    textQuestion = textQuestion ?? control.value as String;
    control.value = '';
    if (textQuestion.isNotEmpty) {
      final answer = await _dataSource.postQuestionQA(
        textQuestion,
        chatId,
      );

      chatConversation.add(answer);
      return chatConversation;
    }
    return [];
  }

  @override
  List<IChatConversation> getChatConversationFromWebSocket(dynamic data) {
    final jsonData = json.decode(data as String) as Json;
    final answer = Answer.fromJson(jsonData);
    chatConversation.add(answer);
    return chatConversation;
  }

  @override
  void addEventToChatAgentWebSocket({
    String? textQuestion,
  }) {
    final control = _chatForm.control('question');
    textQuestion = textQuestion ?? control.value as String;
    control.value = '';
    if (textQuestion.isNotEmpty) {
      _channel.sink.add('{"text":"$textQuestion"}');
    }
  }

  @override
  List<IChatConversation> addQuestionToConversation({
    String? textQuestion,
  }) {
    final control = _chatForm.control('question');
    textQuestion = textQuestion ?? control.value as String;
    final question = Question(text: textQuestion);
    chatConversation.add(question);
    return chatConversation;
  }

  @override
  List<IChatConversation> getRandomNSuggestedQuestion({int n = 4}) {
    final rng = Random();
    final Set suggestedQuestions = {};
    while (suggestedQuestions.length < n) {
      final randIndex = rng.nextInt(_suggestedQuestions.length);
      suggestedQuestions.add(_suggestedQuestions[randIndex]);
    }
    return List.from(suggestedQuestions);
  }

  @override
  WebSocketChannel connectToChatAgentWebSocket(String chatId) {
    return _channel = _dataSource.connectToChatAgentWebSocket(chatId);
  }

  @override
  void disconnectToChatAgentWebSocket() => _channel.sink.close(
        status.normalClosure,
      );

  @override
  Future<(AppError?, UserChatBot?)> existChatBotInfo(String chatId) async =>
      await _dataSource.existChatBotInfo(chatId);
}
