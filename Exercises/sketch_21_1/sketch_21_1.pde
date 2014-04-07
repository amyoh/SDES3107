//Write a function to draw a shape to the screen multiple times, each at a 
// different position.


void setup() {
  size(200,200);
  background(255);
  smooth();
  noLoop();
  stroke(255,0,0);
  strokeWeight(5);
  noFill();
}


void draw() {
  myFunction(0,0,100,100);
}

void myFunction(int size, int number, int x, int y) { //Creates function "myFunction"
  for(int counter = number; counter < 200; counter+=20) {
    ellipse(x,y,size,size);
size+=20; }
}
