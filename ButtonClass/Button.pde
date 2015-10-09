
class Button {


  int xPosition;
  int yPosition;
  int buttonWidth;
  int buttonHeight;

  int centerX;
  int centerY;

  color currentButtonFill;

  color highlightColor;
  color normalColor;

  String label;


  //--------------------------------

  // Class Constructor - special method with NO return type that is used to set up each Object of this Class

  Button(int initialXPosition, int initialYPosition, int initialWidth, int initialHeight, 
        color initialHighlightColor, color initialNormalColor, String initialLabel) {

    xPosition = initialXPosition;
    yPosition = initialYPosition;
    buttonWidth = initialWidth;
    buttonHeight = initialHeight;

    centerX = xPosition + (buttonWidth / 2);
    centerY = yPosition + (buttonHeight / 2);

    highlightColor = initialHighlightColor;
    normalColor = initialNormalColor;

    currentButtonFill = normalColor;

    label = initialLabel;
  }

  //--------------------------------


  void drawButton() {

    stroke(0);
    strokeWeight(2);

    fill(currentButtonFill);

    rect(xPosition, yPosition, buttonWidth, buttonHeight);

    fill(0);

    textAlign(CENTER, CENTER);
    textSize(12);

    text(label, centerX, centerY);
  }


  void changeColourOnMouseHover(int mouseXPosition, int mouseYPosition) {

    if ((mouseXPosition > xPosition) && (mouseXPosition < (xPosition + buttonWidth)) 
      && (mouseYPosition > yPosition) && (mouseYPosition < (yPosition + buttonHeight))) {

      currentButtonFill = color(210);
    }
    else {

      currentButtonFill = color(255);
    }
  }
}

