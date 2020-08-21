class BouncingBall {

  
  PVector location = new PVector(0,0);
  PVector velocity= new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  
  BouncingBall(int lx, int ly,int vx, int vy,float ax, float ay){
  location.set(lx,ly);  
  velocity.set(vx,vy);
  acceleration.set(ax,ay);
  }
  
  void move(){
  location.add(velocity);
  velocity.add(acceleration);
  
  }
  
  void collision(){
  if(location.y+10 > height)
  velocity.set(velocity.x,-velocity.y);
    if(location.x+10 > width)
  velocity.set(-velocity.x,velocity.y);
    if(location.x-10 < width-width)
  velocity.set(-velocity.x,velocity.y);
  
  }
  
  void display(){
  ellipse(location.x,location.y,20,20);

  }
}
