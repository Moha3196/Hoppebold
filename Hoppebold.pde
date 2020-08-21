Background bg;
BouncingBall bb;
void setup(){

  bg= new Background();
  bb= new BouncingBall(width/2,height/2,10,20,0,0.5);
fullScreen();


}

void draw(){
  clear();
  bg.display();
  bb.move();
  bb.display();
  bb.collision();
}
