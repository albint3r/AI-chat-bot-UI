import 'package:flutter/material.dart';

import '../../../core/theme/const_values.dart';

class DialogForm extends StatelessWidget {
  const DialogForm({
    this.child,
    super.key,
  });

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
        constraints: BoxConstraints(
          maxHeight: size.height * .80,
          minHeight: 400,
          maxWidth: 700,
          minWidth: 600,
        ),
        child: child,
      ),
    );
  }
}
