void printMatrix(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      print(matrix[i][j]);
    }
    print('\n');
  }
}
void  main(List<String> args) {
  List<List<int>> matrix = [  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
];

printMatrix(matrix);
}
