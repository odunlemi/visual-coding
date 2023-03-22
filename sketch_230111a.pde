/**
 * Mouse 2D.
 *
 * Moving the mouse changes the position and size of each box.
 */
 
void setup() {
  size(640, 360);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(2);
  fill(250, 205);
  rect(mouseX, height/2, mouseY/1.5+10, mouseY/1.5+10);
  fill(205, 250);
  int inverseX = width-mouseX;
  int inverseY = height-mouseY;
  rect(inverseX, height/2, (inverseY/2)+10, (inverseY/2)+10);
}
