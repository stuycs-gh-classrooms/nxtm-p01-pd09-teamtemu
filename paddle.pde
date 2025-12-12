class Paddle {
  int xp; //x pos of paddle
  int yp;//ypos of paddle
  int lp;//length of paddle
  int wp;//width/height of paddle
  
  Paddle(int x,int y,int l,int w){
    xp = x;
    yp = y;
    lp = l;
    wp = w;
  }
  
  void display(){
    fill(0);
    rect(xp,yp,lp,wp);
  }
  
  void move(int direction){ //if direction is 1 then it will move right if its 0 then it moves left
    if(xp + lp <= width){
      if(direction == 1){
        xp += 50;
      }
    }
    if(xp > 0){
      if(direction == 0){
        xp -= 50;
      }
    }
  }
}
