void drawXsAndOs() {
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      float x = col * spaceSize;
      float y = row * spaceSize;
      if (board[row][col] == 1) {
        circle(x + spaceSize / 2, y + spaceSize / 2, spaceSize);
      } else if (board[row][col] == 2) {
        //Top left to bottom right
        line(x, y, x + spaceSize, y + spaceSize);
        //Top right to bottom left
        line(x + spaceSize, y, x, y + spaceSize);
      }
    }
  }
}

void makeBoard() {
  line(width/3, 0, width/3, height);
  line(2*width/3, 0, 2*width/3, height);
  line(0, height/3, width, height/3);
  line(0, 2*height/3, width, 2*height/3);
}
