import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/theme/const_values.dart';
import 'back_btn.dart';
import 'next_btn.dart';

class BottomButtonsRow extends StatelessWidget {
  const BottomButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboard = context.watch<DashboardBloc>().state;
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackBtn(
            index: dashboard.index,
          ),
          ReactiveFormConsumer(
            builder: (_, formGroup, __) {
              return NextBtn(
                index: dashboard.index,
                totalForms: dashboard.totalForms,
                isFinished: dashboard.isFinished || !formGroup.valid,
              );
            },
          ),
        ],
      ),
    );
  }
}
