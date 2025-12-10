Ball b1;
Block[][] bGrid;

void setup() {
 size(1000,600);
 frameRate(30);
 b1 = new Ball(width/2,height/2,10,25);
 bGrid = new Block[5][10]; //placeholder rows/collums
 //println(bGrid);
}

void draw() {
 background(random(0, 256), random(0,256), 0); 
 b1.move();
 b1.display();
}
