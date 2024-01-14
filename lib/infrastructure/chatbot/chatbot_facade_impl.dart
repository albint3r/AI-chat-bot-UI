import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/models/models.dart';

import '../../domain/chatbot/chatbot_mode.dart';
import '../../domain/chatbot/i_chat_conversation.dart';
import '../../domain/chatbot/i_chatbot_data_source.dart';
import '../../domain/chatbot/i_chatbot_facade.dart';
import '../../domain/chatbot/question.dart';
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

  @override
  FormGroup? get formGroup => _formGroup;

  @override
  ChatBotMode get currMode => _mode.control('modes').value as ChatBotMode;

  @override
  Future<List<IChatConversation>> postQuestion({
    String? textQuestion,
  }) async {
    final control = _chatForm.control('question');
    textQuestion = textQuestion ?? control.value as String;
    control.value = '';
    if (textQuestion.isNotEmpty) {
      final answer = await _dataSource.postQuestionQA(textQuestion);
      chatConversation.add(answer);
      return chatConversation;
    }
    return [];
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
}
