import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/theme/const_values.dart';
import '../../../core/widgets/form_fields/custom_app_text_field.dart';
import '../../../core/widgets/text/text_title.dart';
import 'bottom_buttons_row.dart';
import 'close_btn.dart';
import 'steps_questions_indicator_bar.dart';

class FormArea extends StatelessWidget {
  const FormArea({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboard = context.watch<DashboardBloc>().state;
    final formGroup = dashboard.formGroup?.controls;
    final nameControls = formGroup?.keys.map((nameCtl) => nameCtl).toList();
    // Todo: Is possible to refactor this and used as a form scaffold?
    // If I need to create another stepper form could be a good idea to
    // refactor this widget an create a custom one.
    return ReactiveForm(
      formGroup: dashboard.formGroup!,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CloseBtn(),
          TextTitle.h3('Create New Chat'),
          StepsQuestionsIndicatorBar(
            index: dashboard.index,
            steps: dashboard.totalForms,
          ),
          Expanded(
            child: SizedBox(
              width: 400,
              child: ListView(
                children: [
                  // Create all the field in the form.
                  // use the name controls to create it.
                  ...nameControls!.map(
                    (formControlName) => CustomAppTexTField(
                      key: Key(formControlName),
                      formControlName: formControlName,
                      suffixIcon: const Icon(Icons.check),
                    ),
                  ),
                  // Add the CSV Button if is the last step in the form.
                  if (_isLastStep(dashboard)) ...[
                    const Gap(padding * 4),
                    ElevatedButton(
                      onPressed: () => context.read<DashboardBloc>().add(
                            const DashboardEvent.addCsvFile(),
                          ),
                      child: TextTitle.h2('Search File'),
                    ),
                  ],
                ],
              ),
            ),
          ),
          const BottomButtonsRow(),
        ],
      ),
    );
  }

  bool _isLastStep(DashboardState dashboard) =>
      dashboard.index + 1 == dashboard.totalForms;
}
