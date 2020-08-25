class BouncingBall {

  PVector location = new PVector(0, 0);
  PVector velocity= new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  boolean stopped = false;
  float bbr = 10;


  BouncingBall(int lx, int ly, int vx, int vy, float ax, float ay) {
    location.set(lx, ly);  
    velocity.set(vx, vy);
    acceleration.set(ax, ay);
  }

  BouncingBall(float lx, float ly) {
    location.set(lx, ly);
    velocity.set(0, 0);
    acceleration.set(0, 0);
  }

  void move() {
    location.add(velocity); 

    //location.y+=mass;
    velocity.add(acceleration);
  }

  void collision() {
    //Makes the Balls bounce of the ground
    if (location.y+10 > height)
      velocity.set(velocity.x, -velocity.y);
    //Makes the Balls bounce of the right wall
    if (location.x+10 > width) {
      velocity.set(-velocity.x, velocity.y);
      location.set(width-11, location.y);
    }
    //Makes the Balls bounce of the left wall
    if (location.x-10 < 0) {
      velocity.set(-velocity.x, velocity.y);
      location.set(0+11, location.y);
    }
    //Makes the Balls bounce of the top wall
    if (location.y-10 < 0) {
      velocity.set(velocity.x, -velocity.y);
      location.set(location.x, 0+11 );
    }
    //Makes the Balls stop at the sea on the right 
    if (location.x+10 <= width && location.y+10 <= height && location.y >= height-40  && location.x-10 >= width-185) {
      velocity.set(velocity.x = 0, velocity.y = 0);
      if (stopped==false)
        amountStopped++;
      stopped = true;
    }
    //Makes the Balls stop at the sea on the left
    if (location.x-10 >= 0 && location.y+10 <= height && location.y >= height-40  && location.x+10 <= 185) {
      velocity.set(velocity.x = 0, velocity.y = 0);
      if (stopped==false)
        amountStopped++;
      stopped = true;
    }


    for (int i = 0; i < bb.length; i++) {
      if (bb[i].location.x - 10 < location.x-10 && bb[i].location.x +10 > location.x-10||((bb[i].location.x +10 > location.x+10)&&(bb[i].location.x -10 < location.x+10))) {
        if ((bb[i].location.y + 10 > location.y-10 && bb[i].location.y  -10 < location.y-10)||bb[i].location.y + 10 > location.y+10 && bb[i].location.y  -10 < location.y+10) {
          velocity.rotate(PI/4);
          //(PVector.angleBetween(location,bb[i].location))/2
        }
      }
    }
    if (amount <= amountStopped) {
      Button();
    }
    for (int i = 0; i < bb.length; i++) {
      float distX = bb1.location.x - bb[i].location.x;
      float distY = bb1.location.y - bb[i].location.y;
      float distance = sqrt( (distX*distX) + (distY*distY) );
      //println(distance, bb1.location.x, bb1.location.y);
      if (distance <= (bbr1+bbr)) {
        //println(distance, "Collision", bb[i].location.x, bb[i].location.y);
        bb[i].velocity.rotate(PI/2);
      }
    }
  }

  void Restart() {
    location.x = (int)random(50, width-50);
    location.y = (int)random(50, height-300);
    velocity.x = 10;
    velocity.y = 20;
    acceleration.x = 0;
    acceleration.y = 0.5;
    stopped = false;
  }


  void display() {
    fill(0, 225, 0);
    ellipse(bb1.location.x, bb1.location.y, bbr1*2, bbr1*2);
    fill(255);
    circle(location.x, location.y, bbr*2);
  }
}
