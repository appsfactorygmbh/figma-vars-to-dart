import 'package:flutter/widgets.dart';

class ColorSemantics {
  final Color background;
  final Color buttonPrimary;

  ColorSemantics({
    required this.background,
    required this.buttonPrimary,
  });

  factory ColorSemantics.light() => ColorSemantics(
        background: throw "not found",
        buttonPrimary: throw "not found",
      );
  factory ColorSemantics.dark() => ColorSemantics(
        background: throw "not found",
        buttonPrimary: throw "not found",
      );
}
