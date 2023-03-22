/**
 Draws an ellipse
 */

void setup() {
  size(500, 500);
  background(79, 105, 18);
  stroke(51, 67, 11);
}

void draw() {
  if (mousePressed) {
    fill(250, 242, 230);
  } else {
    fill(245, 251, 231);
  }
  ellipse(mouseX, mouseY, 80, 80);
}
