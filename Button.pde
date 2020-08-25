//Width and Height of the button
int wSize = 400;
int hSize = 200;
//Text Size of the text
int textSize = 40;
//Defining variables needed for button check
boolean lastMousePressed = false;

void Button() {
  //Calculating if mouse has just been pressed
  //boolean mouseJustPressed = mousePressed & !lastMousePressed;
  //lastMousePressed = mousePressed;
  
  stroke(10);
  fill(0, 150, 50);
  imageMode(CENTER);
  rect(xPos, yPos, wSize, hSize);
  textSize(textSize);
  fill(255);
  textAlign(CENTER,CENTER);
  text("Retry", xPos+wSize/2, yPos+hSize/2);
  //noFill();
}

//Checks if a button has been pressed
boolean isButtonPressed(int mouseXPos, int mouseYPos) {
  if (mouseXPos > xPos && mouseXPos < xPos+wSize && mouseYPos > yPos && mouseYPos < yPos+hSize) {
    if (mousePressed == true) {
      return true;
    }
  }
  return false;
}
