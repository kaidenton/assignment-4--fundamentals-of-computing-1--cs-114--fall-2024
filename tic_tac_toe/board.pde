void keyPressed() {
  if (playerTurn) {
    int selection = key - '0';
    if (selection >= 0 && selection <= 8) {
      int row = selection / cols;
      int col = selection % cols;
      if (board[row][col] == 0) {
        //1 is equal to the player's move
        board[row][col] = 1;
        playerTurn = false;
        if (checkWinner() == 0) {
          computerMove();
        }
      } else {
        println("Space already taken. Try another number.");
      }
    } else {
      println("Error: Did not press a number from 0-8. Please try again :)");
    }
  }
}

void computerMove() {
  int emptySpaces = countEmptySpaces();
  if (emptySpaces > 0) {
    int randomCell = (int) random(emptySpaces);
    int count = 0;
      for (int col = 0; col < cols; col++) {
        if (board[row][col] == 0) {
          if (count == randomCell) {
            //2 is equal to the computer's move
            board[row][col] = 2;
            playerTurn = true;
            println("Your Turn.");
            return;
          }
          count++;
        }
      }
    }
  }
}
