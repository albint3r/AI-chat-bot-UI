import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/widgets/text/text_body.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({required this.index, super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: index == 0
            ? null
            : () => context.read<DashboardBloc>().add(
                  const DashboardEvent.backQuestion(),
                ),
        child: const TextBody('Back'),
      ),
    );
  }
}
