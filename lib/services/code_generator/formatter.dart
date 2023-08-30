import 'int_ext.dart';

String formatColor(Map<String, dynamic> json) {
  if (json['a'] == null) return 'throw 0';

  final int a = (json['a'] * 255).round();
  final int r = (json['r'] * 255).round();
  final int g = (json['g'] * 255).round();
  final int b = (json['b'] * 255).round();

  final value = a.toHex() + r.toHex() + g.toHex() + b.toHex();

  final color = 'Color(0x$value)';

  return color;
}
