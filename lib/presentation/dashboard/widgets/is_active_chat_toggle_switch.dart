import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../domain/dashboard/user_chatbot.dart';

class IsActiveChatToggleSwitch extends StatelessWidget {
  const IsActiveChatToggleSwitch(
    this.userChatBot, {
    required this.index,
  });

  final UserChatBot userChatBot;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final dashboard = context.watch<DashboardBloc>().state;
    final currIndex = userChatBot.isActive ? 0 : 1;
    return ToggleSwitch(
      minWidth: 60.0,
      minHeight: 30,
      initialLabelIndex: currIndex,
      cornerRadius: 20.0,
      activeFgColor: colorScheme.onBackground,
      inactiveBgColor: colorScheme.background.withOpacity(.5),
      inactiveFgColor: colorScheme.onBackground,
      totalSwitches: 2,
      labels: const ['On', 'Off'],
      activeBgColors: const [
        [Colors.green, Colors.greenAccent],
        [Colors.red, Colors.redAccent],
      ],
      onToggle: dashboard.isToggling
          ? null
          : (i) {
              // Avoid make call to the API if not changed.
              if (currIndex != i) {
                context.read<DashboardBloc>().add(
                      DashboardEvent.updateChatActiveState(
                        userChatBot.copyWith(
                          isActive: i == 0,
                        ),
                        index,
                      ),
                    );
              }
            },
    );
  }
}
