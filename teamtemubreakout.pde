Ball b1;
Block[][] bGrid;
Paddle p;
PImage cellBars; // Stock image found online
boolean firstrun; // Specific stage first runthrough check
boolean loss; // Loss state
int lives; // Lives counter
boolean won; // Win state
int stage; // Stage counter for speed of ball
boolean paused; // Pause state
ChildApplet[] windows; // array of ChildApplet objects
int variable; // helper for ChildApplet object generation
int window = 0; // number of ChildApplet objects populating ChildApplet[]
int numWindows = 5; // can be modifiable to change # of windows that open
int green = 250; // variable amount for random chance to have a greener background, meaning game background gets progressively redder as you advance

void setup() { // instantiate all global variables to default values
  paused = false;
  stage = 1;
  won = false;
  lives = 5;
  loss = false;
  bGrid = new Block[5][10]; // grid of block objects w/ 5 rows and 10 columns
  p = new Paddle(width/2-100, height-25, 200, 25); // paddle object
  size(1000, 600);
  frameRate(30);
  cellBars = loadImage("prisonBars.jpg"); // loads cell bar image and points variable "cellBars" to it
  b1 = new Ball(width/2, height/2, 10, 25); // ball object
  firstrun = true; // prevent draw() from re-instantiating the entierety of all the blocks in bGrid every time it runs
  //bGrid = new Block[rows][cols]; // placeholder rows/columns
  //blockgrid(5, 10);
  //println(bGrid.length);
  windows = new ChildApplet[numWindows];
}

//println(bGrid);


void draw() {
  if (paused == false) { //checks for pause FIRST
    background(random(0, 256), random(0, green), 0); // epileptic background
    if (won == false) {
      if (loss == false) {
        textSize(100);
        fill(0, 0, (int)(Math.random()*255));
        text("you need to BREAK OUT!", 0, 500);
        textSize(50);
        text(lives, width/2, 400);
        b1.move(); // ball movement
        b1.display(); // ball display
        p.display(); // paddle display
        //println(bGrid.length);
        //println(bGrid.length);
        blockgrid(5, 10);
        collisionDetect(); // checks for any and all collisions
        winCheck(); // checks for wins
      } else {// if user LOSES
        background(0);
        fill(255, 0, 0);
        textSize(200);
        text("YOU LOOSE", 0, height/2);
        text("LOOZER", 0, height);
        textSize(50);
        text("press space to retry", width/2, height-200);
        spawnVirus();
      }
    } else {// if user WINS
      background(0);
      fill(0, 255, 0);
      textSize(200);
      text("you won?!?", 0, height/2);
      text("NOT YET!!!", 0, height);
      textSize(50);
      text("press n to go to next stage", width/2, height-200);
    }
  }
}

void blockgrid(int rows, int cols) {
  if (firstrun == true) { // Checks if blocks have NOT been instantiated since rows and cols are required as attributes
    for (int row = 0; row < bGrid.length; row ++) {
      //println("g1p");
      for (int col = 0; col < bGrid[row].length; col ++) {
        bGrid[row][col] = new Block(col*(width/cols), row*(height/2/rows), (width/cols), (height/2/rows)); // Creates a new block object for every value in the bGrid 2D array
        firstrun = false; // Prevents bGrid from being re-instantiated
      }
    }
  }
  for (int row = 0; row < bGrid.length; row ++) {// Display existing blocks
    //   println("2g1p");
    for (int col = 0; col < bGrid[row].length; col ++) {
      //  println("2g2p");
      if (bGrid[row][col] != null) { // Prevent NullPointerException
        bGrid[row][col].display();
      }
    }
    // println(bGrid[row][col]);
  }
}
void collisionDetect() {
  for (int row = 0; row < bGrid.length; row ++) {
    for (int col = 0; col < bGrid[row].length; col ++) {
      if (bGrid[row][col] != null) {
        if (b1.ballvector.x > bGrid[row][col].blockvector.x && b1.ballvector.x < bGrid[row][col].blockvector.x+bGrid[row][col].siX) { // ball-block collision detection
          if (b1.ballvector.y > bGrid[row][col].blockvector.y && b1.ballvector.y < bGrid[row][col].blockvector.y+bGrid[row][col].siY) {
            //println("Collision!");
            bGrid[row][col] = null;
            b1.xspeed *= 1.01;
            b1.yspeed *= -1.01;
          }
        }
      }
    }
  }
  if (b1.ballvector.x > p.xp && b1.ballvector.x < p.xp+p.lp) { // ball-paddle collision detection
    if (b1.ballvector.y >= p.yp) {
      //println("collisionpaddle");
      b1.xspeed += (random(-5, 5)); // randomize ball movement after bouncing off the paddle
      // println(b1.xspeed);
      b1.yspeed *= (-1-(0.02*stage)); // increase ball speed upon reaching higher stages
      //println(b1.yspeed);
    }
  }
  if (b1.ballvector.y > height + b1.size/2) { // Life loss system if ball touches boundary
    if (lives > 0) {
      lives -=1;
      b1.ballvector.x = width/2;
      b1.ballvector.y = height/2;
    } else {
      loss = true;
    }
  }
}
void keyPressed() {
  if (key == ' ' && loss == true) { // Game reset after a loss
    setup();
    lives = 5;
    loss = false;
    b1.ballvector.x = width/2; // Reset ball position
    b1.ballvector.y = height/2;
    b1.xspeed = 10; // Reset ball speed
    b1.yspeed = 10;
    firstrun = true; // Cause bGrid to be instantiated again
    stage = 1;
  }
  if (key == 'i') { // Debugging instant win/secret key if the user becomes angry and spams
    for (int row = 0; row < bGrid.length; row ++) {
      for (int col = 0; col < bGrid[row].length; col ++) {
        bGrid[row][col] = null;
      }
    }
  }
  if (key == 'n' && won == true) {// Game reset after a win, increase stage counter
    stage ++;
    green = green - 50; // ideally we expect the user to play 5 levels
    firstrun = true; // Cause bGrid to be instantiated again
    b1.ballvector.x = width/2; // Reset ball position
    b1.ballvector.y = height/2;
    won = false;
    b1.xspeed = 10; // Reset ball speed
    b1.yspeed = 10;
    //println(stage);
    lives += stage; // Increase lives upon reaching higher stages
  }
  if (key == 'r') { // Manual game reset
    setup();
  }
  if (key == 'z') { // Pause logic
    if (paused == false) {
      paused = true;
    } else {
      paused = false;
    }
  }
  if (key == CODED) { // Keyboard control
    if (keyCode == LEFT) {
      p.move(0); //moves paddle left
    }
    if (keyCode == RIGHT) {
      p.move(1); //moves paddle right
    }
  }
}
void winCheck() {
  won = true; // sets won to true, will become false if ANY block is still in the grid
  for (int row = 0; row < bGrid.length; row ++) {
    //println("g1p");
    for (int col = 0; col < bGrid[row].length; col ++) {
      if (bGrid[row][col] != null) {
        won = false;
      }
    }
  }
}

String getVariableName() {
  variable++;
  return ("applet" + variable);
}

void spawnVirus() { // NOT AN ACTUAL VIRUS
  //windows = new ChildApplet[numWindows];
  if (window < windows.length) {
    windows[window] = new ChildApplet();
    window++;
  }
  //for (int i = 0; i < windows.length; i++) {
  // windows[i] = new ChildApplet();
  //}
}
