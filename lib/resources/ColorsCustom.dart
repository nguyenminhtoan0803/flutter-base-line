import 'package:flutter/material.dart';

/// Defines a single color as well a color swatch with ten shades of the color.
///
/// The color's shades are referred to by index. The greater the index, the
/// darker the color. There are 10 valid indices: 50, 100, 200, ..., 900.
/// The value of this color should the same the value of index 500 and [shade500].
///
/// See also:
///
///  * [Colors], which defines all of the standard material colors.
class ColorsCustom {
  ColorsCustom._();
  static const Color black = Color(0xFF000000);

  static const MaterialColor colorsHex = MaterialColor(
    0xFF558B2F,
    <int, Color>{
      50: Color(0xFF558B2F),
      100: Color(0xFF558B2F),
      200: Color(0xFF558B2F),
      300: Color(0xFF558B2F),
      400: Color(0xFF558B2F),
      500: Color(0xFF558B2F),
      600: Color(0xFF558B2F),
      700: Color(0xFF558B2F),
      800: Color(0xFF558B2F),
      900: Color(0xFF558B2F),
    },
  );
}
