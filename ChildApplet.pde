class ChildApplet extends PApplet {
  public ChildApplet() {
    PApplet.runSketch(new String[]{""}, this);
  }

  void settings() {
    fullScreen();
  }

  void draw() {
    background(0);
    fill(255, 0, 0);
    textSize(200);
    text("YOU LOOSE", 0, height/2);
    text("LOOZER", 0, height/3);
    textSize(50);
    text("find the main processing window and stop the virus before it eats your computer !!", width/2, height-200);
  }
 
}
