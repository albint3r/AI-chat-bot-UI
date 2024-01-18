import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/widgets/form_fields/custom_app_text_field.dart';
import '../../../core/widgets/text/text_title.dart';
import 'back_btn.dart';
import 'next_btn.dart';

class FormArea extends StatelessWidget {
  const FormArea({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboard = context.watch<DashboardBloc>().state;
    return Column(
      children: [
        TextTitle.h3('Create New Chat'),
        SizedBox(
          width: 200,
          height: 200,
          child: ReactiveForm(
            formGroup: dashboard.formGroup!,
            child: const Column(
              children: [
                CustomAppTexTField(
                  formControlName: 'name',
                  suffixIcon: Icon(Icons.folder),
                ),
                CustomAppTexTField(
                  formControlName: 'description',
                  suffixIcon: Icon(Icons.description),
                ),
              ],
            ),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BackBtn(),
            NextBtn(),
          ],
        )
      ],
    );
  }
}
