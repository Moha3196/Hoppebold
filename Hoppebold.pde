Background bg;
BouncingBall bb;
void setup(){

  bg= new Background();
  bb= new BouncingBall(width/2,height/2,1,1);
fullScreen();


}

void draw(){
  bg.display();
  bb.display();
}
