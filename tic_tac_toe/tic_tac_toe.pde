void setup() {
  size(500, 500);
  computerMove();
}

void draw() {
  background(255);
  makeBoard();
  drawXsAndOs();
  
  if (checkWinner() != 0) {
    noLoop();
    println(checkWinner() == 1 ? "Player wins!" : "Computer wins!");
  } else if (isDraw()) {
    noLoop();
    println("It's a draw!");
  }
}
