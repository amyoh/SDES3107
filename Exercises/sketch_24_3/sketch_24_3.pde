//Load an image and use it as a drawing tool.

PImage sparkle;
PImage wand;

void setup() {
  background(0);
size(500, 500);
}
void draw() {
sparkle = loadImage("sparkle.png");
wand = loadImage("wand.png");
  image(sparkle,mouseX,mouseY,20,20);
cursor(wand,30,0);
}


