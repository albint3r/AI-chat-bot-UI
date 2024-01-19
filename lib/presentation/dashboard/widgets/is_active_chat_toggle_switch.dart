import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class IsActiveChatToggleSwitch extends StatelessWidget {
  const IsActiveChatToggleSwitch(this.isLive);

  final bool isLive;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return ToggleSwitch(
      minWidth: 60.0,
      minHeight: 30,
      initialLabelIndex: isLive ? 0 : 1,
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
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}
