import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  const TextBody(
    this.text, {
    this.color,
    this.fontSize,
    this.textAlign,
    this.maxLines = 15,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      text,
      textAlign: textAlign,
      style: theme.textTheme.bodyMedium?.copyWith(
        color: color,
        fontSize: fontSize,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
