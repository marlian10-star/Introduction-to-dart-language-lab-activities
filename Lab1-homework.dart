
//NAME   : INNOCENT CHIGWENDE
//SUBJECT: OOP
//TASK   : Write application that prints matrix with rows and columns, number of rows and columns are input parameters 


void printMatrix(int rows, int cols) {
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      print('($i, $j)');
    }
    print('\n');
  }
}
void main() {
  printMatrix(4,4);
}
