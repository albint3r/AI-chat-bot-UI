import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../aplication/chatbot/chatbot_bloc.dart';
import '../../core/theme/const_values.dart';
import '../../core/widgets/text/text_body.dart';
import '../utils/utils.dart';

class QueryTextField extends StatelessWidget {
  const QueryTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final chat = context.watch<ChatBotBloc>().state;
    final form = chat.formGroup!.control('chat') as FormGroup;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Column(
        children: [
          SizedBox(
            width: textFieldWidth,
            child: ReactiveForm(
              formGroup: form,
              child: ReactiveTextField(
                onSubmitted: chat.isFetching
                    ? null
                    : (control) => sendQuestionByMode(chat, context),
                style: theme.textTheme.bodyMedium,
                decoration: InputDecoration(
                  hintText: 'Message Alberto-GPT ...',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: padding),
                    child: Transform.scale(
                      scale: .8,
                      child: Container(
                        decoration: BoxDecoration(
                          color: colorScheme.onSurface,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(borderRadius),
                          ),
                        ),
                        child: ReactiveFormConsumer(
                          builder: (_, formGroup, __) {
                            final control = formGroup.control('question');
                            final question = control.value as String;
                            return IconButton(
                              disabledColor: colorScheme.background,
                              hoverColor: colorScheme.primary,
                              color: colorScheme.background,
                              onPressed: question.isEmpty || chat.isFetching
                                  ? null
                                  : () => sendQuestionByMode(chat, context),
                              icon: const Icon(
                                Icons.arrow_upward,
                                size: 30,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                formControlName: 'question',
              ),
            ),
          ),
          const Gap(padding),
          const TextBody(
            'Alberto-GPT can make mistakes. Consider checking important information.',
          ),
        ],
      ),
    );
  }
}
