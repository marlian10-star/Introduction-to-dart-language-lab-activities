bool validSpacing(String s) {
  // Trim leading and trailing whitespace
  s = s.trim();

  // Check if the string contains any spaces
  if (s.contains(' ')) {
    // Split the string into words and check if there are more than one word
    List<String> words = s.split(' ');
    if (words.length > 1) {
      // Check if there is more than one space between the words
      for (int i = 0; i < words.length - 1; i++) {
        if (words[i].isEmpty || words[i + 1].isEmpty) {
          return false;
        }
      }
      return true;
    } else {
      return false;
    }
  } else {
    // No spaces, so it is always valid
    return true;
  }
}

void main(List<String> args) {
  print(validSpacing('Hello world'));
  print(validSpacing(' Hello world'));
  print(validSpacing('Hello world  '));
  print(validSpacing('Hello  world'));
  print(validSpacing('Hello'));
  print(validSpacing('Helloworld'));
  print(validSpacing('Helloworld '));
  print(validSpacing(' '));
  print(validSpacing(''));
}
