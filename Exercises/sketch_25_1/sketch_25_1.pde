//Use the number keys on the keyboard to modify the movement of a line.

int x;
int y;

void setup() {
  size(100, 100);
  smooth();
  strokeWeight(4);
  stroke(255);
}
           
void draw() {
  background(0);  
  if ((keyPressed == true) && (key == '1')) {
    x = 0;
    y = 0;
  } else if ((keyPressed == true) && (key == '2')) {
    x = 100;
    y = 0;
    } else if ((keyPressed == true) && (key == '3')) {
    x = 100;
    y = 100;
       } else if ((keyPressed == true) && (key == '4')) {
    x = 0;
    y = 100;
}
  line(50,50,x,y);

}
