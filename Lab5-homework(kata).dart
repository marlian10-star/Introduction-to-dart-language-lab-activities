//NAME   : INNOCENT CHIGWENDE
//SUBJECT: OOP

List<int>? validate_bet(List<int> gameType, String text) {
  // Extract the number of numbers to choose and the maximum number
  int n = gameType[0];
  int m = gameType[1];

  // Split the text into a list of numbers
  List<String> numbers = text.split(new RegExp(r'[ ,;]+'));

  // Check that there are exactly N numbers
  if (numbers.length != n) return null;

  // Convert the numbers to integers and sort them in ascending order
  List<int> chosenNumbers = numbers.map((number) => int.parse(number)).toList();
  chosenNumbers.sort();

  // Check that all numbers are unique and between 1 and M
  if (chosenNumbers.toSet().length != n ||
      chosenNumbers[0] < 1 ||
      chosenNumbers[n - 1] > m) return null;

  return chosenNumbers;
}

void main() {
  print(validate_bet([5, 90], "1 2 3 4 5"));
  print(validate_bet([5, 90], "5 , 3, 1  4,2"));
  print(validate_bet([5, 90], "1, 2; 3, 4, 5"));
  print(validate_bet([5, 90], "1, 2, 3, 4"));
  print(validate_bet([5, 90], "1, 2, 3, 4, 95"));
}
