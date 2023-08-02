extension Ext on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String toCamelCase() {
    if (isEmpty) {
      return '';
    }

    List<String> words = trim().split(RegExp(r'[ /-]'));
    String camelCase = words[0].toLowerCase();

    for (int i = 1; i < words.length; i++) {
      var word = words[i];
      camelCase +=
          word.substring(0, 1).toUpperCase() + word.substring(1).toLowerCase();
    }

    return camelCase;
  }

  String sanitizeVariableName() {
    final reserved = {'return', 'final', 'late', 'if'};
    String result = replaceAll(RegExp(r'[^\w\s]'), '');

    if (reserved.contains(result)) {
      result = '${result}_';
    }
    return result;
  }

  String capitalizeFirstLetter() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String escapeSingleAndDoubleQuotes() {
  return replaceAll("'", "\\'").replaceAll('"', '\\"');
  }
}
