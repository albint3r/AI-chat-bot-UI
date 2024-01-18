import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/dashboard/dashboard_bloc.dart';
import '../../core/theme/const_values.dart';
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
    return Row(
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
    );
  }
}
