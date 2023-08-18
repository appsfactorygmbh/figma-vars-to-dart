import 'package:flutter/widgets.dart';

class ColorPrimitives {
  final Color white;
  final Color pink;
  final Color green;
  final Color black;
  final Color blue;

  ColorPrimitives({
    required this.white,
    required this.pink,
    required this.green,
    required this.black,
    required this.blue,
  });

  factory ColorPrimitives.create() => ColorPrimitives(
        white: const Color(0xFFF2ECEC),
        pink: const Color(0xFFDD006A),
        green: const Color(0xFF8CC93E),
        black: const Color(0xFF2C2C2C),
        blue: const Color(0xFF3000F2),
      );
}
