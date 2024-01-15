import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../aplication/chatbot/chatbot_bloc.dart';
import '../../../domain/chatbot/chatbot_mode.dart';
import '../../core/theme/const_values.dart';
import '../../core/widgets/text/text_body.dart';
import '../../core/widgets/text/text_title.dart';

class ModeDropDownField extends StatelessWidget {
  const ModeDropDownField({super.key});

  DropdownMenuItem menuItem(ChatBotMode value, String text) => DropdownMenuItem(
        value: value,
        child: Padding(
          padding: const EdgeInsets.only(
            left: padding,
          ),
          child: Center(
            child: TextTitle.h3(text),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final chat = context.watch<ChatBotBloc>().state;
    final form = chat.formGroup!.control('mode') as FormGroup;
    return SizedBox(
      width: 170,
      child: ReactiveForm(
        formGroup: form,
        child: Column(
          children: [
            ReactiveDropdownField(
              alignment: Alignment.center,
              focusColor: Colors.transparent,
              onChanged: (control) => context.read<ChatBotBloc>().add(
                    const ChatBotEvent.changeMode(),
                  ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
              ),
              formControlName: 'modes',
              hint: const TextBody('Select Chat Mode'),
              items: [
                menuItem(ChatBotMode.qa, 'QA AlbertoGPT'),
                menuItem(ChatBotMode.agent, 'Agent AlbertoGPT'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
