import 'package:flutter/material.dart';

import 'lateral_menu.dart';

class BodyDashBoard extends StatelessWidget {
  const BodyDashBoard({this.children = const [], super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final size = MediaQuery.of(context).size;
    return const Row(
      children: [
        LateralMenu(),
      ],
    );
  }
}
