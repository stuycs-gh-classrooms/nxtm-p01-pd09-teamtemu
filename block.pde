class Block {
  PVector blockvector;
  int siX, siY;
  
  Block(int x, int y, int sizeX, int sizeY){
    blockvector = new PVector(x,y);
    siX = sizeX;
    siY = sizeY;
  }
  
  void display(){
    fill(0);
    rect(blockvector.x,blockvector.y,siX,siY);
  }




















}
