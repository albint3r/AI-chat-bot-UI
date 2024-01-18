import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/widgets/text/text_body.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.read<DashboardBloc>().add(
            const DashboardEvent.backQuestion(),
          ),
      child: const TextBody('Back'),
    );
  }
}
