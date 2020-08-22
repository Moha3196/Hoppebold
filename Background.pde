class Background {
  PImage background;

  Background() {
    background = loadImage("download.jpg");
  }

  void display() {

    background(0, 205, 255);
    //Draws the Clouds
    for (int x = 120; x < width-100; x += 225.5) {
      stroke(1);
      fill(255);
      ellipse(x+58, 50, 75, 60+5);
      ellipse(x, 50, 120, 60+5);
      noStroke();
      ellipse(x+58, 50, 72.5, 57.5+5);
    }
    //Draws Sun
    stroke(1);
    fill(255,255,0);
    circle(width,0,200);
    
    //Draws Waves
    for (int x = 0; x < width; x += 30) {
      noStroke();
      fill(0, 0, 255);
      circle(x+15, height-35, 40);
      fill(0, 205, 255);
      circle(x+40, height-40+7.5, 55);
    }
    
    //Draws the Sea
    stroke(1);
    fill(0, 0, 255);
    rect(0, height-40, width, 40);
    //Draws the hill/ground
    fill(0, 225, 0);
    ellipse(width/2, height*1.25, width, height);
    
    //image(background,0,0,width,height);
  }
}
