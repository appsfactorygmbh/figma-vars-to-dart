import 'package:flutter/widgets.dart';
import 'ui_constants.dart';

class ColorSemantics {
  final Color background;
  final Color buttonPrimary;

  ColorSemantics({
    required this.background,
    required this.buttonPrimary,
  });

  factory ColorSemantics.light(ColorPrimitives colorPrimitives) =>
      ColorSemantics(
        background: colorPrimitives.white,
        buttonPrimary: colorPrimitives.blue,
      );

  factory ColorSemantics.dark(ColorPrimitives colorPrimitives) =>
      ColorSemantics(
        background: colorPrimitives.black,
        buttonPrimary: colorPrimitives.green,
      );
}
