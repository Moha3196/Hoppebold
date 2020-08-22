class BouncingBall {


  PVector location = new PVector(0, 0);
  PVector velocity= new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  float mass = 0.;

  BouncingBall(int lx, int ly, int vx, int vy, float ax, float ay) {
    location.set(lx, ly);  
    velocity.set(vx, vy);
    acceleration.set(ax, ay);
  }

  /*BouncingBall(float lx, float ly) {
    location.set(lx, ly);  
    velocity.set(0, -0);
    acceleration.set(0, 0); 
  }*/
  
  void move() {
    location.add(velocity); 

    location.y+=mass;
    velocity.add(acceleration);
  }

  void collision() {
    //Makes the Balls bounce of the ground
    if (location.y+10 > height)
      if (velocity.y>0)
        velocity.set(velocity.x, -velocity.y);
    //Makes the Balls bounce of the right wall
    if (location.x+10 > width)
      velocity.set(-velocity.x, velocity.y);
    //Makes the Balls bounce of the left wall
    if (location.x-10 < 0)
      velocity.set(-velocity.x, velocity.y);
    //Makes the Balls stop at the sea on the right 
    if (location.x+10 <= width && location.y+10 <= height && location.y >= height-40  && location.x-10 >= width-127.5) {
      velocity.set(velocity.x = 0, velocity.y = 0);
    }
    //Makes the Balls stop at the sea on the left
    if (location.x-10 >= 0 && location.y+10 <= height && location.y >= height-40  && location.x+10 <= 127.5)
      velocity.set(velocity.x = 0, velocity.y = 0);

    for (int i = 0; i < bb.length; i++) {
      if (bb[i].location.x - 10 < location.x-10 && bb[i].location.x +10 > location.x-10||((bb[i].location.x +10 > location.x+10)&&(bb[i].location.x -10 < location.x+10))) {
        if ((bb[i].location.y + 10 > location.y-10 && bb[i].location.y  -10 < location.y-10)||bb[i].location.y + 10 > location.y+10 && bb[i].location.y  -10 < location.y+10) {
          velocity.rotate(PI);
          //(PVector.angleBetween(location,bb[i].location))/2
        }
      }
    }
  }

  void display() {
    fill(255);
    ellipse(location.x, location.y, 20, 20);
  }
}
