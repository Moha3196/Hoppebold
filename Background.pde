class Background{
PImage background;
  
  Background(){
  background = loadImage("download.jpg");
  
  }
  
  void display(){
    
  ellipse(100,100,20,20);
  image(background,0,0,width,height);
 
  }

}
