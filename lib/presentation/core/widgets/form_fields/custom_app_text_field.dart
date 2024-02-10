import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../theme/const_values.dart';

class CustomAppTexTField extends StatelessWidget {
  const CustomAppTexTField({
    required this.formControlName,
    this.hintText = '',
    this.labelText = '',
    this.obscureText = false,
    this.suffixIcon = const Icon(Icons.email),
    super.key,
    this.width = textFieldWidth,
  });

  final String formControlName;
  final String hintText;
  final String labelText;
  final Widget? suffixIcon;
  final bool obscureText;
  final double width;

  String _getFormatLabelText(String formControlName) {
    final words = formControlName.split('_')..join(' ');
    return words.join(' ').toUpperCase();
  }

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
        width: width,
        child: ReactiveTextField(
          formControlName: formControlName,
          obscureText: obscureText,
          style: style,
          // todo: create a extension to add title text style
          decoration: InputDecoration(
            labelText: labelText.isNotEmpty
                ? labelText
                : _getFormatLabelText(formControlName),
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
