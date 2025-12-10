Ball b1;
Block[][] bGrid;
PImage cellBars;

void setup() {
 bGrid = new Block[5][10]; //placeholder rows/collums
 size(1000,600);
 frameRate(30);
 cellBars = loadImage("prisonBars.jpg");
 b1 = new Ball(width/2,height/2,10,25);
 //bGrid = new Block[rows][cols]; //placeholder rows/collums
  //blockgrid(5, 10);
//println(bGrid.length);
     }
 
 //println(bGrid);


void draw() {
 background(random(0, 256), random(0,256), 0); 
 b1.move();
 b1.display();
 //println(bGrid.length);
 //println(bGrid.length);
 blockgrid(bGrid.length, bGrid[1].length);
}

void blockgrid(int rows, int cols){
   for(int row = 0; row < bGrid.length; row ++){
     //println("g1p");
     for(int col = 0; col < bGrid[row].length; col ++){
       bGrid[row][col] = new Block(col*(width/cols), row*(height/2/rows), (width/cols),(height/2/rows));
      // println(bGrid[row][col]);
     }
   }
  for(int row = 0; row < bGrid.length; row ++){
    println("2g1p");
      for(int col = 0; col < bGrid[row].length; col ++){
        println("2g2p");
        bGrid[row][col].display();
       // println(bGrid[row][col]);
      }
  }
}
        
