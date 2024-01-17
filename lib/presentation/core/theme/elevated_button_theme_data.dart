import 'package:flutter/material.dart';

import 'const_values.dart';

abstract class CustomElevatedButtonThemeData {
  static ElevatedButtonThemeData? themeData(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(30,
              elevatedButtonHeight), // Puedes ajustar el ancho según tus necesidades
        ),
        fixedSize: MaterialStateProperty.all<Size>(
          const Size(textFieldWidth / 2,
              elevatedButtonHeight), // Puedes ajustar el ancho según tus necesidades
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            // Validate if the Button is disabled to select the current color.
            if (states.contains(MaterialState.disabled)) {
              return colorScheme.onBackground.withOpacity(.1);
            } else {
              return colorScheme.primary.withOpacity(0.8);
            }
          },
        ),
        foregroundColor:
            MaterialStateProperty.all<Color>(colorScheme.onPrimary),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
            side: BorderSide(
              color: colorScheme.primary,
            ),
          ),
        ),
        shadowColor: MaterialStateProperty.all<Color>(colorScheme.primary),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(padding),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 20.0,
          ),
        ),
        iconColor: MaterialStateProperty.all<Color>(colorScheme.onBackground),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return colorScheme.primaryContainer
                  .withOpacity(0.8); // Cambia el color al presionar
            }
            return colorScheme.primary.withOpacity(0.8); // Sin cambio de color
          },
        ),
      ),
    );
  }
}
