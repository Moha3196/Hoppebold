Background bg;
//BouncingBall bb1;
int amount = 20;
int amountGround = 1;
BouncingBall[] bb = new BouncingBall[amount];
//BouncingBall[] bb1 = new BouncingBall[amountGround];


void setup() {

  bg = new Background();
  //bb1[amountGround] = new BouncingBall();
  //bb1 = new BouncingBall(width/2, height*1.25);
  for (int i =0; i<amount; i++) {
    bb[i]= new BouncingBall((int)random(50, width-50), (int)random(50, height-50), 10, 20, 0, 0.5);
    //bb[i]= new BouncingBall();
  }
  fullScreen();
  frameRate(60);
}

void draw() {
  clear();
  bg.display();
  //bb1.display();
  //bb1.move();
  //bb1.collision();
  for (int i =0; i<amount; i++) {
    bb[i].move();
    bb[i].display();
    bb[i].collision();
  }
}
