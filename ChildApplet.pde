// Modified code from GeneKao (https://github.com/GeneKao)

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
    textSize(30);
    text("find the main processing window and stop the virus before it eats your computer !!", 0, height-200);
    surface.setTitle("teamtemubreakout"); // Make windows the same name as main processing window for more difficulty
  }
}
