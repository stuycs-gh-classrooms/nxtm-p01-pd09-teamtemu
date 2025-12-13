class Ball {
  PVector ballvector; // Vector for ball position
  int size;
  int xspeed, yspeed;

  Ball(int x, int y, int sp, int si) {
    ballvector = new PVector(x, y);
    size = si;
    xspeed = sp;
    yspeed = sp;
  }

  void move() {
    {
      if (ballvector.y <= size/2) { // Check if ball has touched top of screen or went past
        yspeed *= -1;
      }// up-down bounce

      if (ballvector.x >= width - size/2 || // Check if ball has touched left or right of screen or went past
        ballvector.x <= size/2) {
        xspeed *= -1;
      }// left-right bounce


      ballvector.y += yspeed;
      ballvector.x += xspeed;
      fill(int(random(0, 2))*255);
    }
  }


  void display() {
    circle(ballvector.x, ballvector.y, size);
  }
}
