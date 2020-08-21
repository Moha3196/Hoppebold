class BouncingBall {

  
  PVector location = new PVector(0,0);
  PVector velocity= new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  float mass = 0.25;
  
  BouncingBall(int lx, int ly,int vx, int vy,float ax, float ay){
  location.set(lx,ly);  
  velocity.set(vx,vy);
  acceleration.set(ax,ay);
  }
  
  void move(){
  location.add(velocity); 
 
  location.y+=mass;
  velocity.add(acceleration);

  }
  
  void collision(){
  if(location.y+10 > height)
  if(velocity.y>0)
  velocity.set(velocity.x,-velocity.y);
    if(location.x+10 > width)
  velocity.set(-velocity.x,velocity.y);
    if(location.x-10 < width-width)
  velocity.set(-velocity.x,velocity.y);
           
              for (int i = 0; i < bb.length; i++) {
                if (bb[i].location.x - 10 < location.x-10 && bb[i].location.x +10 > location.x-10||((bb[i].location.x +10 > location.x+10)&&(bb[i].location.x -10 < location.x+10))) {
                    if (bb[i].location.y + 10 > location.y && bb[i].location.y + -10 < location.y)
velocity.rotate(180);
//(PVector.angleBetween(location,bb[i].location))/2
                }

  
  }}
  
  void display(){
    text(location.y,500,500);
  ellipse(location.x,location.y,20,20);

  }
}
