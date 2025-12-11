Ball b1;
Block[][] bGrid;
Paddle p;
PImage cellBars;
boolean firstrun;
boolean loss;
int lives;

void setup() {
  lives = 5;
  loss = false;
 bGrid = new Block[5][10]; //placeholder rows/collums
 p = new Paddle(width/2-100,height-25,200,25);
 size(1000,600);
 frameRate(30);
 cellBars = loadImage("prisonBars.jpg");
 b1 = new Ball(width/2,height/2,10,25);
 firstrun = true;
 //bGrid = new Block[rows][cols]; //placeholder rows/collums
  //blockgrid(5, 10);
//println(bGrid.length);
     }
 
 //println(bGrid);


void draw() {
 background(random(0, 256), random(0,256), 0); 
 if(loss == false){
 textSize(100);
 fill(0,0,(int)(Math.random()*255));
 text("you need to BREAKOUT!", 0, 500);
 textSize(50);
 text(lives, width/2, 400);
 b1.move();
 b1.display();
 p.display();
 //println(bGrid.length);
 //println(bGrid.length);
 blockgrid(5,10);
 collisionDetect();
 }
 else{
   background(0);
   fill(255,0,0);
   textSize(200);
   text("YOU LOOSE", 0, height/2);
   text("LOOZER", 0, height);
   textSize(50);
   text("press space to retry", width/2, height-200);
 }
}

void blockgrid(int rows, int cols){
  if(firstrun == true){
   for(int row = 0; row < bGrid.length; row ++){
     //println("g1p");
     for(int col = 0; col < bGrid[row].length; col ++){
       bGrid[row][col] = new Block(col*(width/cols), row*(height/2/rows), (width/cols),(height/2/rows));
       firstrun = false;
     }
     }
   }
  for(int row = 0; row < bGrid.length; row ++){
 //   println("2g1p");
      for(int col = 0; col < bGrid[row].length; col ++){
      //  println("2g2p");
      if(bGrid[row][col] != null){
        bGrid[row][col].display();
        }
      }
       // println(bGrid[row][col]);
      }
  }
void collisionDetect(){
    for(int row = 0; row < bGrid.length; row ++){
      for(int col = 0; col < bGrid[row].length; col ++){
        if(bGrid[row][col] != null){
          if(b1.ballvector.x > bGrid[row][col].blockvector.x && b1.ballvector.x < bGrid[row][col].blockvector.x+bGrid[row][col].siX){
            if(b1.ballvector.y > bGrid[row][col].blockvector.y && b1.ballvector.y < bGrid[row][col].blockvector.y+bGrid[row][col].siY){
              println("Collision!");
              bGrid[row][col] = null;
              b1.xspeed *= 1.01;
              b1.yspeed *= -1.01;
            }
          }
        }
      }
      }
         if(b1.ballvector.x > p.xp && b1.ballvector.x < p.xp+p.lp){
            if(b1.ballvector.y > p.yp && b1.ballvector.y < p.yp+p.wp){
             // println("collisionpaddle");
              b1.xspeed += (random(-5,5));
              b1.yspeed *= -1.01;
            }
         }
          if(b1.ballvector.y > height + b1.size/2){
            if(lives > 0){
              lives -=1;
              b1.ballvector.x = width/2;
              b1.ballvector.y = height/2;
            }
            else{
            loss = true;
            }
          }
            
    }
void keyPressed(){
  if(key == ' ' && loss == true){
    lives = 5;
    loss = false;
    b1.ballvector.x = width/2;
    b1.ballvector.y = height/2;
    firstrun = true;
  }
  if(key == CODED){
    if(keyCode == LEFT){
      p.move(0);
    }
    if(keyCode == RIGHT){
      p.move(1);
    }
  }
}

        
