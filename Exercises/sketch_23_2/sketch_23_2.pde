//Invent three unique shapes that behave differently in relation to the mouse. Each 
// shape’s behavior should change when the mouse is pressed. Relate the form of 
// each shape to its behavior.

int ellSize = 50;
int trans = 255;
int pos = 100;

void setup(){
  size(400,400);
}

void draw(){
  background(255);

  if (mousePressed == true){
ellSize = 100; //ellipse doubles in size
trans -= 20; //rectangle fades
pos -= 1; //line retracts to top left corner
  }
noStroke();
fill(0,trans);
rect(100,100,50,50);

stroke(200,0,0);
line(0,0,pos,pos);

fill(255,0,0);
strokeWeight(5);
stroke(200,0,0);
ellipse(200,200,ellSize,ellSize);
}
