class Ball {
  PVector ballvector;
  int size;
  int xspeed, yspeed;

  Ball(int x, int y, int sp, int si) {
    ballvector = new PVector(x,y);
    size = si;
    xspeed = sp;
    yspeed = sp;
  }

  void move() {
    {
      //YOUR CODE HERE
      if (ballvector.y >= height - size/2 || // if ball has made it all the way to bottom/top or somehow went past the border
        ballvector.y <= size/2) {
        yspeed *= -1;
      }// up-down bounce

      if (ballvector.x >= width - size/2 || // if ball has made it all the way to the right/left side or somehow went past the border
        ballvector.x <= size/2) {
        xspeed *= -1;
      }// left-right bounce


      ballvector.y += yspeed;
      ballvector.x += xspeed;
    }
  }
  
  
  void display() {
   circle(ballvector.x, ballvector.y, size); 
  }
}
