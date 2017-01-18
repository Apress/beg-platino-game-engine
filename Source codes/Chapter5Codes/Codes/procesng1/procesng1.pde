void setup() {
  size(1024, 768);
  noSmooth();
  fill(126);
  background(102);
}

void draw() {
  if (mousePressed) {
    stroke(255);
  } else {
    stroke(0);
  }
  ellipse(mouseX-30, mouseY, mouseX+30, mouseY);
  ellipse(mouseX, mouseY-30, mouseX, mouseY+30); 
}