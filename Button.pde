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
  
  stroke(1);
  fill(0, 150, 50);
  rect(xPos, yPos, wSize, hSize);
  textSize(textSize);
  text("Retry", xPos+wSize/2, yPos+hSize/2);
}

//Checks if a button has been pressed
boolean isButtonPressed(int mouseXPos, int mouseYPos, boolean isMousePressed) {
  if (mouseXPos > xPos && mouseXPos < xPos+wSize && mouseYPos > yPos && mouseYPos < yPos+hSize) {
    if (isMousePressed == true) {
      return true;
    }
  }
  return false;
}
