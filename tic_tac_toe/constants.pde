int rows = 3;
int cols = 3;
float spaceSize = 500 / 3.0;
int[][] board = new int[rows][cols];
boolean playerTurn = false;

int checkWinner() {
  for (int i = 0; i < rows; i++) {
    if (board[i][0] != 0 && board[i][0] == board[i][1] && board[i][1] == board[i][2]) {
      return board[i][0];
    }
  }
  for (int j = 0; j < cols; j++) {
    if (board[0][j] != 0 && board[0][j] == board[1][j] && board[1][j] == board[2][j]) {
      return board[0][j];
    }
  }
  if (board[0][0] != 0 && board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
    return board[0][0];
  }
  if (board[0][2] != 0 && board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
    return board[0][2];
  }
  return 0;
}

boolean isDraw() {
  return countEmptySpaces() == 0 && checkWinner() == 0;
}

int countEmptySpaces() {
  int count = 0;
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      if (board[row][col] == 0) {
        count++;
      }
    }
  }
  return count;
}
