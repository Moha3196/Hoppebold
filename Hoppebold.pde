Background bg;
BouncingBall bb1;
int amount = 21;
int amountStopped = 0;
BouncingBall[] bb = new BouncingBall[amount];
float bbr1; 
int xPos;
int yPos;

void setup() {
  bbr1 = width/2-125;
  //X and Y position of the button
  xPos = width/2-200;
  yPos = height/2-100;
  bg = new Background();
  //bb1[amountGround] = new BouncingBall();
  bb1 = new BouncingBall(width/2, height*1.25);
  for (int i =0; i<amount; i++) {
    //bb[i]= new BouncingBall((int)random(50, width-50), (int)random(50, height-50), 10, 20, 0, 0.5);
    bb[i]= new BouncingBall((int)random(50, width-50), (int)random(50, height-300), 10, 20, 0, 0.5);
  }
  fullScreen();
  frameRate(60);
}

void draw() {
  print(amountStopped);
  clear();
  bg.display();
  bb1.display();
  //bb1.move();
  //bb1.collision();
  //Button();
  for (int i =0; i<amount; i++) {
    bb[i].move();
    bb[i].display();
    bb[i].collision();
    
  }
}
