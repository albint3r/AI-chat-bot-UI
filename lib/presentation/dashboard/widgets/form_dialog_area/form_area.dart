import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/widgets/form_fields/custom_app_text_field.dart';
import '../../../core/widgets/text/text_body.dart';
import '../../../core/widgets/text/text_title.dart';
import 'bottom_buttons_row.dart';
import 'close_btn.dart';

class FormArea extends StatelessWidget {
  const FormArea({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboard = context.watch<DashboardBloc>().state;
    final formGroup = dashboard.formGroup?.controls;
    final nameControls = formGroup?.keys.map((nameCtl) => nameCtl).toList();
    return ReactiveForm(
      formGroup: dashboard.formGroup!,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CloseBtn(),
          TextTitle.h3('Create New Chat'),
          Expanded(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  ...nameControls!.map(
                    (formControlName) => CustomAppTexTField(
                      key: Key(formControlName),
                      formControlName: formControlName,
                      suffixIcon: const Icon(Icons.check),
                    ),
                  ),
                  // Add the Excel Question
                  if (dashboard.index + 1 == dashboard.totalForms)
                    ElevatedButton(
                      onPressed: () => context.read<DashboardBloc>().add(
                            const DashboardEvent.addCsvFile(),
                          ),
                      child: TextTitle.h2('Upload CSV File'),
                    ),
                ],
              ),
            ),
          ),
          const BottomButtonsRow(),
        ],
      ),
    );
  }
}
