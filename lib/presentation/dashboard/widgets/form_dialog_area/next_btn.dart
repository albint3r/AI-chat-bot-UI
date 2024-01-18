import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/widgets/text/text_body.dart';

class NextBtn extends StatelessWidget {
  const NextBtn({
    required this.index,
    required this.totalForms,
    required this.isFinished,
    super.key,
  });

  final int index;
  final int totalForms;
  final bool isFinished;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: isFinished
            ? null
            : () => context.read<DashboardBloc>().add(
                  const DashboardEvent.nextQuestion(),
                ),
        child: TextBody(index + 1 < totalForms ? 'Next' : 'Finish'),
      ),
    );
  }
}
