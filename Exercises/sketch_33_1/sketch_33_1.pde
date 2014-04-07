//Create an array to store the y-coordinates of a sequence of shapes. Draw each shape 
// inside draw() and use the values from the array to set the y-coordinate of each.

int[] yPos = {0,20,40,60,80,100};

void setup(){
size(100,100);
background(255);
}

void draw(){
  fill(255,0,0,50);
  noStroke();
ellipse(50,yPos[0],30,30);
ellipse(50,yPos[1],30,30);
ellipse(50,yPos[2],30,30);
ellipse(50,yPos[3],30,30);
ellipse(50,yPos[4],30,30);
ellipse(50,yPos[5],30,30);
noLoop();
}
