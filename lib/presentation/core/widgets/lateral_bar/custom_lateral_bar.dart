import 'package:flutter/material.dart';

import '../../theme/const_values.dart';

class CustomLateralBar extends StatelessWidget {
  const CustomLateralBar({this.children = const [], super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: lateralContainerWith,
      decoration: BoxDecoration(
        color: colorScheme.onSecondary,
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
