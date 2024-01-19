import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/widgets/text/text_body.dart';

class CloseBtn extends StatelessWidget {
  const CloseBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 50,
            height: 40,
            child: ElevatedButton(
              onPressed: () => context.read<DashboardBloc>().add(
                    const DashboardEvent.closeFormDialog(),
                  ),
              child: const TextBody('X'),
            ),
          ),
        ],
      ),
    );
  }
}
