/** A simple Moiré pattern 
Credited to David Mrugala (https://thedotisblack.com/)
*/

/* Switched the colors */

float xStep = 20;
float xx;
float angle = 5;

void setup() {
  size(900, 900);
  surface.setLocation(987, 70);
  
  stroke(#d9d8dd);
  strokeCap(CORNER);
  strokeWeight(xStep/2);
  
}

void draw() {
  background(#aca9b4);
  
  blendMode(DIFFERENCE);
  
  //xx = map(mouseX, 0, width, 10, width);
  //angle = map(mouseY, 0, height, -90, 90);
  xStep = map(mouseY, 0, height, 10, height);
  
  strokeWeight(xStep/2);
  translate(width/2, height/2);
  for(int x=-width/2; x<=+width/2 ; x+=xStep) {
    line(x, -height/2, x, height/2);
  }
  
  rotate(radians(angle));
  for(int x=-width/2; x<=+width/2 ; x+=xStep) {
    line(x+xx, -height/2, x+xx, height/2);
  }
   angle++;
}
