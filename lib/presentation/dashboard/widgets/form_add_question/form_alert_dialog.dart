import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../core/widgets/form_fields/custom_app_text_field.dart';
import '../../../core/widgets/text/text_body.dart';
import '../../../core/widgets/text/text_title.dart';

const boxWidth = 700.0;
const boxHeight = 80.0;
const double fieldWidth = (boxWidth / 2) - 20;

class FormAlertDialog extends StatelessWidget {
  const FormAlertDialog({
    super.key,
  });

  FormGroup get _formGroup => FormGroup({
        'question': FormControl<String>(
          validators: [
            Validators.required,
          ],
        ),
        'answer': FormControl<String>(
          validators: [
            Validators.required,
          ],
        ),
      });

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: _formGroup,
      child: AlertDialog(
        title: Center(child: TextTitle.h2('Add a new question')),
        content: const SizedBox(
          height: boxHeight,
          width: boxWidth,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomAppTexTField(
                    formControlName: 'question',
                    width: fieldWidth,
                    suffixIcon: Icon(Icons.question_mark),
                  ),
                  CustomAppTexTField(
                    formControlName: 'answer',
                    width: fieldWidth,
                    suffixIcon: Icon(Icons.question_answer),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => context.router.pop<bool>(),
            child: const TextBody('Cancel'),
          ),
          SizedBox(
            width: 50,
            child: ReactiveFormConsumer(
              builder: (_, formGroup, child) {
                return ElevatedButton(
                  onPressed: formGroup.valid
                      ? () => context.router.pop<Map<String, Object?>>(
                            formGroup.rawValue,
                          )
                      : null,
                  child: child,
                );
              },
              child: const TextBody('Add'),
            ),
          ),
        ],
      ),
    );
  }
}
