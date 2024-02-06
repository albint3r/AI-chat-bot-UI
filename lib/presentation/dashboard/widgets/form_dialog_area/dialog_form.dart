import 'package:flutter/material.dart';

import '../../../core/theme/const_values.dart';

class DialogForm extends StatelessWidget {
  const DialogForm({
    this.child,
    this.minHeight = 400,
    this.maxWidth = 700,
    this.minWidth = 600,
    super.key,
  });

  final double minHeight;
  final double maxWidth;
  final double minWidth;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.primary,
              colorScheme.background.withOpacity(.9),
            ],
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        // Todo: I can change this values latter??
        // add a const value here  in the max height.
        constraints: BoxConstraints(
          maxHeight: size.height * .80,
          minHeight: minHeight,
          maxWidth: maxWidth,
          minWidth: minWidth,
        ),
        child: child,
      ),
    );
  }
}
