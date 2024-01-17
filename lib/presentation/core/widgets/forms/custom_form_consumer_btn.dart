import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../text/text_body.dart';

class CustomFormConsumerBtn extends StatelessWidget {
  const CustomFormConsumerBtn({
    required this.text,
    required this.width,
    this.onPress,
    super.key,
  });

  final String text;
  final double width;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (_, form, __) {
        return ElevatedButton(
          onPressed: form.valid ? onPress : null,
          child: TextBody(text),
        );
      },
    );
  }
}
