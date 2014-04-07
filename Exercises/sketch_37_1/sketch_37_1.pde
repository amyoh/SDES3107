//Change the visual attributes of a word as the cursor moves across the display window.

PFont font;
int textColour;

void setup() {
size(600, 200);

textColour = 0;
font = loadFont("Arial-Black-100.vlw");
textFont(font);
textSize(100);
textAlign(CENTER);
colorMode(HSB,100);
}

void draw() {

background(0,0,100);

textColour = mouseX/6;
fill(textColour,99,100);
text("RAINBOW",300,150);
}
