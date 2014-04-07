//Write a program to update the display window only when a key is pressed. 

void setup(){
size(100,100);
background(255);
noStroke();
fill(255,200,0,50);
}

void draw(){}

void keyPressed(){
int x = key-20;
ellipse(x,50,20,20);
}
