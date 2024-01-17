import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../theme/const_values.dart';

class CustomAppTexTField extends StatelessWidget {
  const CustomAppTexTField({
    required this.formControlName,
    this.hintText = '',
    this.obscureText = false,
    this.suffixIcon,
    super.key,
  });

  final String formControlName;
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    //The size box create the effect to hacker the field. When the
    // error field appears don't move up the field,
    // because is inside this space.
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final style = theme.textTheme.bodyMedium;

    return Padding(
      padding: const EdgeInsets.all(padding),
      child: SizedBox(
        width: textFieldWidth,
        child: ReactiveTextField(
          formControlName: formControlName,
          obscureText: obscureText,
          style: style,
          // todo: create a extension to add title text style
          decoration: InputDecoration(
            labelText: formControlName.toUpperCase(),
            hintText: hintText,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: padding),
              child: Transform.scale(
                scale: .8,
                child: Container(
                  decoration: BoxDecoration(
                    color: colorScheme.onSurface,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(borderRadius),
                    ),
                  ),
                  child: suffixIcon,
                ),
              ),
            ),
            labelStyle: style,
            suffixIconColor: colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
