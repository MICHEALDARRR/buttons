// Global Variables
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, lietpurple=#EA18E7, purple=#810E7F, white=#FFFFFF, reset=white;

void setup() {
  size(500, 600);
  //populaet
  buttonX = width*1/4;
  buttonY = height*1/3;
  buttonWidth = width*1/2;
  buttonHeight = height*1/3;
}//End setup()

void draw() {
  background(white);
  println(mouseX, mouseY);
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) {
    buttonColour = lietpurple;
  } else {
    buttonColour = purple; 
  }
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(reset);
}//End draw()

void mousePressed() {
  if(mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
