import 'package:example/shared/ui_constants/ui_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

extension ColorsExt on BuildContext {
  ColorSemantics get colors {
    final primitives = ColorPrimitives.value();
    if (MediaQuery.platformBrightnessOf(this) == Brightness.light) {
      return ColorSemantics.light(primitives);
    } else {
      return ColorSemantics.dark(primitives);
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.colors.background,
    );
  }
}

