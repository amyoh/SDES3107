//Animate a shape to react when the mouse is pressed and when it is released

int xsize = 50; //set width of rectangle
int ysize = 50; //set height of rectangle
int blueVal = 50; //set colour of rectangle

void setup(){
size(300,300); //set size to 300x300
}

void draw(){
  noStroke();
  fill(0,0,blueVal);
  rectMode(CENTER);
  rect(150,150,xsize,ysize); //draw rectangle in the middle of screen
}


void mousePressed(){ //when mouse is pressed:
xsize *= 2; //double the width of the rectangle
ysize *= 2; //double the height of the rectangle
}

void mouseReleased(){ //when mouse is released:
 blueVal += 50; //lighten the colour by 50
}
