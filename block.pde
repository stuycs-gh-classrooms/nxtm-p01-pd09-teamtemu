class Block {
  PVector blockvector;
  int siX, siY;
  
  Block(int x, int y, int sizeX, int sizeY){
    blockvector = new PVector(x,y);
    siX = sizeX;
    siY = sizeY;
  }
  
  void display(){
    stroke(0,255,255);
    fill(255,255,0);
    rect(blockvector.x,blockvector.y,siX,siY,25);
    image(cellBars,blockvector.x+10,blockvector.y+10,siX-20,siY-20);
  }
    




















}
