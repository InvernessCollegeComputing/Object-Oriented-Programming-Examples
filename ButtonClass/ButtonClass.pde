
Button equalsButton;
Button plusButton;
Button minusButton;

String calculatorDisplay;

int valueMemory;

void setup() {

  size(500, 700);

//Button(int initialXPosition, int initialYPosition, int initialWidth, int initialHeight, color initialHighlightColor, color initialNormalColor, String initialLabel)

  equalsButton = new Button(50, 50, 50, 50, color(230), color(255), "=");
//  plusButton = new Button();
//  minusButton = new Button();
}





void draw() {

  background(255);

  equalsButton.changeColourOnMouseHover(mouseX, mouseY);  
  equalsButton.drawButton();

  
  
}



