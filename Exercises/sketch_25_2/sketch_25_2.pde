//Create a typing program to display a different image for each letter on the keyboard.

PImage A;
PImage B;
PImage C;
PImage D;
PImage E;
PImage F;

void setup(){
 size(300,300);
 background(255);
A = loadImage("A.jpg");
B = loadImage("B.jpg");
C = loadImage("C.jpg");
D = loadImage("D.jpg");
E = loadImage("E.jpg");
F = loadImage("F.jpg");
}

void draw(){
if ((keyPressed == true) && ((key == 'a') || (key == 'A'))) {
image(A,50,50,200,200);
}

if ((keyPressed == true) && ((key == 'b') || (key == 'B'))) {
image(B,50,50,200,200);
}

if ((keyPressed == true) && ((key == 'c') || (key == 'C'))) {
image(C,50,50,200,200);
}

if ((keyPressed == true) && ((key == 'd') || (key == 'D'))) {
image(D,50,50,200,200);
}

if ((keyPressed == true) && ((key == 'e') || (key == 'E'))) {
image(E,50,50,200,200);
}

if ((keyPressed == true) && ((key == 'f') || (key == 'F'))) {
image(F,50,50,200,200);
}
}
