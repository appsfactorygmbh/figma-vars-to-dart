import 'package:figma_vars_to_dart/services/code_generator/dart_keywords.dart';

extension Ext on String {
  String camelCase() {
    if (isEmpty) {
      return '';
    }
    List<String> words = trim().splitByMultipleSeparators();
    String camelCase = words[0].toLowerCase();

    for (int i = 1; i < words.length; i++) {
      var word = words[i];
      camelCase +=
          word.substring(0, 1).toUpperCase() + word.substring(1).toLowerCase();
    }
    return camelCase;
  }

  String pascalCase() {
    return camelCase().capitalizeFirstLetter();
  }

  String escapeKeywords() {
    String result = replaceAll(RegExp(r'[^\w\s]'), '');

    if (dartKeywords.contains(result)) {
      result = '${result}_';
    }
    return result;
  }
  String escapeSingleAndDoubleQuotes() {
    return replaceAll("'", "\\'").replaceAll('"', '\\"');
  }
  String capitalizeFirstLetter() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

extension _Helpers on String {
  List<String> splitByMultipleSeparators() {
    String pattern = [
      ' ',
      '/',
      '_',
      '-',
    ].map((sep) => "\\$sep").join("|");
    final regex = RegExp(pattern);
    return split(regex);
  }


}
