class Paddle {
  int xp;
  int yp;
  int lp;
  int wp;
  
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
  
  void move(int direction){
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
