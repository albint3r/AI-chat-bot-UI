import 'package:flutter/material.dart';

class ColorTheme {
  static ColorScheme get light => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff7984f2),
        onPrimary: Color(0xfffdfdfd),
        secondary: Color(0xff341d1a),
        onSecondary: Color(0xff505694),
        primaryContainer: Color(0xff188bf6),
        onPrimaryContainer: Color(0xfffdfdfd),
        secondaryContainer: Color(0xfff61818),
        onSecondaryContainer: Color(0xfffdfdfd),
        error: Color(0xffb00020),
        onError: Color(0xffffffff),
        background: Color(0xffb1e3f7),
        onBackground: Color(0xff000000),
        surface: Color(0xfffdc234),
        onSurface: Color(0xff000000),
        inversePrimary: Color(0xff3ed769),
        // tertiary: Color(0xff0091ea),
        // onTertiary: Color(0xffffffff),
        // tertiaryContainer: Color(0xffcfe4ff),
        // onTertiaryContainer: Color(0xff111314),
        // errorContainer: Color(0xfffcd8df),
        // onErrorContainer: Color(0xff141213),
        // surfaceVariant: Color(0xfff1eff8),
        // onSurfaceVariant: Color(0xff121213),
        // outline: Color(0xff565656),
        // shadow: Color(0xff000000),
        // inverseSurface: Color(0xff121116),
        // onInverseSurface: Color(0xfff5f5f5),
        // inversePrimary: Color(0xffd1c0ff),
        // surfaceTint: Color(0xff4527a0),
      );

  static ColorScheme get dark => const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xff7984f2),
        onPrimary: Color(0xfffdfdfd),
        secondary: Color(0xff341d1a),
        onSecondary: Color(0xff000000),
        primaryContainer: Color(0xff188bf6),
        onPrimaryContainer: Color(0xfffdfdfd),
        secondaryContainer: Color(0xff939393),
        onSecondaryContainer: Color(0xfffdfdfd),
        error: Color(0xffb00020),
        onError: Color(0xffffffff),
        background: Color(0xff343540),
        onBackground: Color(0xffffffff),
        surface: Color(0xfffdc234),
        // this color affects the border of the text field.
        onSurface: Color(0xff484953),
        // secondaryContainer: Color(0xff9fcbf1),
        // onSecondaryContainer: Color(0xff0e1114),
        // tertiary: Color(0xff0091ea),
        // onTertiary: Color(0xffffffff),
        // tertiaryContainer: Color(0xffcfe4ff),
        // onTertiaryContainer: Color(0xff111314),
        // errorContainer: Color(0xfffcd8df),
        // onErrorContainer: Color(0xff141213),
        // surfaceVariant: Color(0xfff1eff8),
        // onSurfaceVariant: Color(0xff121213),
        // outline: Color(0xff565656),
        // shadow: Color(0xff000000),
        // inverseSurface: Color(0xff121116),
        // onInverseSurface: Color(0xfff5f5f5),
        // inversePrimary: Color(0xffd1c0ff),
        // surfaceTint: Color(0xff4527a0),
      );
}
