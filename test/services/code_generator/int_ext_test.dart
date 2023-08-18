import 'package:figma_vars_to_dart/services/code_generator/int_ext.dart';
import 'package:test/test.dart';

void main() {
  test('should format 255 as FF', () {
    expect(255.toHex(), 'FF');
  });
  test('should format 0 as 00', () {
    expect(0.toHex(), '00');
  });
}
