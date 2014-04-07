//Move a shape from left to right across the screen. When it moves off the right edge, 
// return it to the left.

float x = -10.0;

void setup() {
  fill(0);
  noStroke();
}

void draw() {
  background(255); // stops ellipses from building up
  frameRate(60);
  ellipse(x,50, 20, 20);
  x += 0.5; //ellipse moves from left to right
  if (x>110){
    x=0;
  } //ellipse returns to the left of the screen
}
