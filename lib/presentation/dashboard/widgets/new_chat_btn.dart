import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/dashboard/dashboard_bloc.dart';
import '../../core/theme/const_values.dart';
import '../../core/widgets/text/text_body.dart';

class NewChatBtn extends StatelessWidget {
  const NewChatBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: ElevatedButton(
        onPressed: () => context.read<DashboardBloc>().add(
              const DashboardEvent.createNewChatBot(),
            ),
        child: const TextBody('New Chatbot'),
      ),
    );
  }
}
