class Ball {
  PVector ballvector; //vector of the balls position
  int size;
  int xspeed, yspeed; //how much the x and y coordes will incriment each move

  Ball(int x, int y, int sp, int si) {
    ballvector = new PVector(x,y);
    size = si;
    xspeed = sp;
    yspeed = sp;
  }

  void move() {
    {
      //YOUR CODE HERE
      if (ballvector.y <= size/2){ // if ball has made it all the way to top or somehow went past the border
        yspeed *= -1;
      }// up-down bounce

      if (ballvector.x >= width - size/2 || // if ball has made it all the way to the right/left side or somehow went past the border
        ballvector.x <= size/2) {
        xspeed *= -1;
      }// left-right bounce


      ballvector.y += yspeed;
      ballvector.x += xspeed;
      fill(int(random(0,2))*255);
    }
  }
  
  
  void display() {
   circle(ballvector.x, ballvector.y, size); 
  }
}
