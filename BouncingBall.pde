class BouncingBall {

  PVector location = new PVector(0,0);
  PVector velocity= new PVector(0,0);
  
  BouncingBall(int lx, int ly,int vx, int vy){
  location.set(lx,ly);  
  location.set(vx,vy)
  }
  
  void display(){
  ellipse(100,100,20,20);

  }
}
