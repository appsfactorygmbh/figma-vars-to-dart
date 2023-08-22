extension Ext on int {
  String toHex({int minLength = 2}) {
    return toRadixString(16).toUpperCase().padLeft(minLength, '0');
  }
}
