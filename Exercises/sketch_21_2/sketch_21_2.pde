//Extend the function created for exercise 1 by creating more parameters to control 
// additional aspects of its form.


void setup() {
  size(200,200);
  background(255);
  smooth();
  noLoop();
  noStroke();
}


void draw() {
  myFunction(0,0,100,100,0,40);
}

void myFunction(int size, int number, int x, int y,int colour, int transparency) { //Creates function "myFunction"
  for(int counter = number; counter < 200; counter+=20) {
    fill(colour,transparency);
    ellipse(x,y,size,size);
size+=20; }
}
