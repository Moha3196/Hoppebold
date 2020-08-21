class BouncingBall {

  PVector location = new PVector(0,0);
  PVector velocity= new PVector(0,0);
  
  BouncingBall(int lx, int ly,int vx, int vy){
  location.set(lx,ly);  
  velocity.set(vx,vy);
  }
  
  void move(){
  location.add(velocity);
  }
  
  void display(){
  ellipse(location.x,location.y,20,20);

  }
}
