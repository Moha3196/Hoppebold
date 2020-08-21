Background bg;
BouncingBall bb;
void setup(){

  bg= new Background();
  bb= new BouncingBall(width/2,height/2,2,10);
fullScreen();
frameRate(60);

}

void draw(){
  bg.display();
  bb.move();
  bb.display();
}
