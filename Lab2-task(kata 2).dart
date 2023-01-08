String printerError(String s) {
  // Find the number of errors by counting the number of characters
  // in s that are not in the range 'a' to 'm'

  int errors = s.split('').where((ch) => ch < 'a' || ch > 'm').length;

  // Return the error rate as a string
  return '$errors/${s.length}';
}

void main(List<String> args) {
  print(printerError('aaabbbbhaijjjm'));
  print(printerError('aaaxbbbbyyhwawiwjjjwwm'));
}
