//Control the position of a shape with the mouse. Strive to create a more interesting 
// relation than one directly mimicking the position of the cursor



void setup() {
  size(200, 200);
  strokeWeight(8);
  smooth();
  stroke(255,0,0,100);

}
void draw() {
background(255);
float ix = width-mouseX;
float iy = height-mouseY;
line(100,100,mouseX,mouseY);
line(100,100,ix,iy);

} 
