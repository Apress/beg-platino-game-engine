float x, y;
float dim = 80.0;

void setup() {
  size(1024, 768);
  noStroke();
}

void draw() {
  background(102);
  
  x = x + 0.8;
  
  if (x > width + dim) {
    x = -dim;
  } 
  float X =mouseX-dim/2;
  float Dim =dim*mouseX;
  
  translate(x, height/2-dim/2);
  fill(255);
  ellipse(X, X, Dim, Dim);
  
  // Transforms accumulate. Notice how this rect moves 
  // twice as fast as the other, but it has the same 
  // parameter for the x-axis value
  translate(x, dim);
  fill(0);
  rect(X,X, Dim, Dim);
}