Background bg;
int amount = 20;
BouncingBall[] bb = new BouncingBall[amount];


void setup(){

  bg= new Background();

  for(int i =0;i<amount;i++){
 bb[i]= new BouncingBall((int)random(50,width-50),(int)random(50,height-50),10,20,0,0.5);}
fullScreen();
frameRate(10);


}

void draw(){
    clear();
  bg.display();
   for(int i =0;i<amount;i++){
  bb[i].move();
  bb[i].display();
  bb[i].collision();
   }
}
