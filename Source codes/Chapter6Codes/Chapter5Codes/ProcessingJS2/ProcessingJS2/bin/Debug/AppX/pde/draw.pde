float d, dt;
void setup() {
  background (240,240,240);
  size(1000, 800);
  smooth();
  strokeWeight(0);
}
void draw() {
  d=dist( mouseX, mouseY, pmouseX, pmouseY);
  dt=map(sin(d),-1,1, 2, 4);
  print(dt);
if(mousePressed==true){
  stroke(180,0,0,180);
  strokeWeight(4+dt/2);
 line(mouseX, mouseY, pmouseX, pmouseY);
 
 stroke(90,90,0,180);
 strokeWeight((4+dt/2)/2);
line(mouseX+(4+dt/2)/2, mouseY-(4+dt/2)/2, pmouseX+(4+dt/2)/2, pmouseY-(4+dt/2)/2);
 
 stroke(0,180,0,180);
 strokeWeight(4+dt/2);
line(mouseX+(4+dt/2), mouseY-(4+dt/2), pmouseX+(4+dt/2), pmouseY-(4+dt/2));
 
stroke(0,90,90,180);
strokeWeight((4+dt/2)/2);
line(mouseX-(4+dt/2)/2, mouseY+(4+dt/2)/2, pmouseX-(4+dt/2)/2, pmouseY+(4+dt/2)/2);
 
 
stroke(0,0,180,180);
strokeWeight(4+dt/2);
line(mouseX-(4+dt/2), mouseY+(4+dt/2), pmouseX-(4+dt/2), pmouseY+(4+dt/2));
 
  }
 
}