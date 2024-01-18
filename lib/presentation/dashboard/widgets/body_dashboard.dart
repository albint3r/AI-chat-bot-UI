import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/dashboard/dashboard_bloc.dart';
import '../../core/theme/const_values.dart';
import '../../core/widgets/text/text_title.dart';
import 'form_dialog_area/back_btn.dart';
import 'form_dialog_area/dialog_form.dart';
import 'form_dialog_area/form_area.dart';
import 'form_dialog_area/next_btn.dart';
import 'lateral_menu.dart';
import 'user_chatbot_card.dart';

class BodyDashBoard extends StatelessWidget {
  const BodyDashBoard({this.children = const [], super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final dashboard = context.watch<DashboardBloc>().state;

    final size = MediaQuery.of(context).size;
    if (dashboard.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    const lateralBrakingPoint =
        screenBreakingPoint + lateralContainerWith + 100;
    return Stack(
      children: [
        Row(
          children: [
            if (size.width >= lateralBrakingPoint) const LateralMenu(),
            Expanded(
              child: Column(
                children: dashboard.userChatBots
                    .map((userChatBot) => UserChatBotCard(userChatBot))
                    .toList(),
              ),
            ),
          ],
        ),
        if (dashboard.showForm)
          const DialogForm(
            child: FormArea(),
          ),
      ],
    );
  }
}
