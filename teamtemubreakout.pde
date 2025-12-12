Ball b1;
Block[][] bGrid;
Paddle p;
PImage cellBars; //just a stock image i found online
boolean firstrun; //sees if its the first runthru of draw of that specific stage
boolean loss; //boolean for wether or not you lost
int lives; //how may lives you have levft
boolean won; //sees if you won or jto
int stage; //int what stage you are on affects speed of ball when hitting paddle
boolean paused; //boolean for wether or not paused

void setup() {
  paused = false; //instantiates each global variable to thier deafualt
  stage = 1;
  won = false;
  lives = 5;
  loss = false;
 bGrid = new Block[5][10]; //makes a grid of block objects w 5 rows and 10 collums
 p = new Paddle(width/2-100,height-25,200,25); //makes a paddle w these stats
 size(1000,600);
 frameRate(30);
 cellBars = loadImage("prisonBars.jpg"); //loads the cell bar image and attatches it to variable cell bars
 b1 = new Ball(width/2,height/2,10,25); //makes a ball object
 firstrun = true; //this variable is here to prevent draw from re-instantiating the entierety of all the blocks in bgrid every time it runs
 //bGrid = new Block[rows][cols]; //placeholder rows/collums
  //blockgrid(5, 10);
//println(bGrid.length);
     }
 
 //println(bGrid);


void draw() {
  if(paused == false){ //checks for pause FIRST
 background(random(0, 256), random(0,256), 0); //epileptic background
 if(won == false){
 if(loss == false){
 textSize(100); //if neither win or loose then do allathis
 fill(0,0,(int)(Math.random()*255));
 text("you need to BREAKOUT!", 0, 500);
 textSize(50);
 text(lives, width/2, 400);
 b1.move(); //nakes ball move
 b1.display(); //displays the ball at correct coordinates
 p.display(); //displays the paddle at correct coordinates
 //println(bGrid.length);
 //println(bGrid.length);
 blockgrid(5,10);
 collisionDetect(); //cgecs fir all colls8sons
 winCheck(); // checks for wins
 }
 else{//this is what happens if you LOOSE
   background(0);
   fill(255,0,0);
   textSize(200);
   text("YOU LOOSE", 0, height/2);
   text("LOOZER", 0, height);
   textSize(50);
   text("press space to retry", width/2, height-200);
 }
 }
 else{//this is what happens if you WIN
   background(0);
   fill(0,255,0);
   textSize(200);
   text("you won?!?", 0, height/2);
   text("NOT YET!!!", 0, height);
   textSize(50);
   text("press n to go to next stage" , width/2, height-200);
 }
}
}

void blockgrid(int rows, int cols){
  if(firstrun == true){ //only if the blocks have NOT been instantiated runs this part, i needed to intake rows and cols variable which is why this couldnt be just apart of setup...
   for(int row = 0; row < bGrid.length; row ++){
     //println("g1p");
     for(int col = 0; col < bGrid[row].length; col ++){
       bGrid[row][col] = new Block(col*(width/cols), row*(height/2/rows), (width/cols),(height/2/rows)); //runs through each spot in the grid and makes a new block object there
       firstrun = false; //makes it so this WONT happen again..........................................
     }
     }
   }
  for(int row = 0; row < bGrid.length; row ++){//this part displays what blocks there is on the screen
 //   println("2g1p");
      for(int col = 0; col < bGrid[row].length; col ++){
      //  println("2g2p");
      if(bGrid[row][col] != null){ //makes sure theres a block their before it deisplays
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
          if(b1.ballvector.x > bGrid[row][col].blockvector.x && b1.ballvector.x < bGrid[row][col].blockvector.x+bGrid[row][col].siX){ //checks if the ball is touching a block
            if(b1.ballvector.y > bGrid[row][col].blockvector.y && b1.ballvector.y < bGrid[row][col].blockvector.y+bGrid[row][col].siY){
              //println("Collision!");
              bGrid[row][col] = null;
              b1.xspeed *= 1.01;
              b1.yspeed *= -1.01;
            }
          }
        }
      }
      }
         if(b1.ballvector.x > p.xp && b1.ballvector.x < p.xp+p.lp){ //checks if the ball is thougching the paddle
            if(b1.ballvector.y >= p.yp){
              //println("collisionpaddle");
              b1.xspeed += (random(-5,5)); //adds some variation to how the ball moves after hitting hte paddle
             // println(b1.xspeed);
              b1.yspeed *= (-1-(0.02*stage)); //basically this smakes the speed go up quicker if the stage is higher thus making higher stages harder!
              //println(b1.yspeed);
            }
         }
          if(b1.ballvector.y > height + b1.size/2){ //if touching the BAD edge..... loose a life if all lives gone you LOOSE.
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
  if(key == ' ' && loss == true){ //resets the game if you are on loss screen
    lives = 5;
    loss = false;
    b1.ballvector.x = width/2; //resets the ball position state
    b1.ballvector.y = height/2; 
    b1.xspeed = 10; //resets the ball speed
    b1.yspeed = 10;
    firstrun = true; //makes it first run so each block gets instantiated again
    stage = 1;
  }
  if(key == 'i'){ //insta win for testing
       for(int row = 0; row < bGrid.length; row ++){
     for(int col = 0; col < bGrid[row].length; col ++){
       bGrid[row][col] = null;
     }
       }
  }
  if(key == 'n' && won == true){//resets the game and incriments stage value by one
    stage ++;
    firstrun = true; //makes it the first run so each block gets instantiated again
    b1.ballvector.x = width/2; //set original ball position
    b1.ballvector.y = height/2;
    won = false;
    b1.xspeed = 10; //set original ball speed
    b1.yspeed = 10;
    //println(stage); 
    lives += stage; //makes lives go up based on the stage so you can go for a bit longer
  }
  if(key == 'r'){ //calls setup/restarts the game if you press this
    setup();
  }
  if(key == 'z'){ //pausing mechanic
    if(paused == false){
    paused = true;
    }
    else{
      paused = false;
    }
  }
  if(key == CODED){ //so that arrows can be used
    if(keyCode == LEFT){
      p.move(0); //moves paddle left
    }
    if(keyCode == RIGHT){
      p.move(1); //moves paddle right
    }
  }
}
void winCheck(){
  won = true; //sets won to true, will become false if ANY block is still in the grid
   for(int row = 0; row < bGrid.length; row ++){
     //println("g1p");
     for(int col = 0; col < bGrid[row].length; col ++){
       if(bGrid[row][col] != null){
         won = false;
       }
     }
   }
}
        
