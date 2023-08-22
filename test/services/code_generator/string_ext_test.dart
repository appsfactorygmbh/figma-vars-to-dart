import 'package:figma_vars_to_dart/services/code_generator/string_ext.dart';
import 'package:test/test.dart';

void main() {
  test('should format varibale name as camelCase', () {
    var expected = 'colorBrand';

    expect('color-brand'.camelCase(), expected);
    expect('color brand'.camelCase(), expected);
    expect('color/brand'.camelCase(), expected);
    expect('color_brand'.camelCase(), expected);
  });
  test('should format varibale name as PamelCase', () {
    var expected = 'ColorBrand';

    expect('color-brand'.pascalCase(), expected);
    expect('color brand'.pascalCase(), expected);
    expect('color/brand'.pascalCase(), expected);
    expect('color_brand'.pascalCase(), expected);
  });
  test('should format varibale name as sname_case', () {
    var expected = 'color_brand';

    expect('color-brand'.snakeCase(), expected);
    expect('color brand'.snakeCase(), expected);
    expect('color/brand'.snakeCase(), expected);
    expect('color_brand'.snakeCase(), expected);
  });


  test('should escape Dart keywords', (){
    expect('await'.escapeKeywords(), 'await_');
    expect('return'.escapeKeywords(), 'return_');
    expect('class'.escapeKeywords(), 'class_');
  });
}
