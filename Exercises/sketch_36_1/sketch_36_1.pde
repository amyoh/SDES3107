//Select a noun and an adjective. Animate the noun to reveal the adjective

PFont font;
int opacity = 255;
int opacity2 = 0;

void setup() {
size(200, 200);
font = loadFont("AGaramondPro-Bold-48.vlw");
textFont(font);
textAlign(CENTER);
}

void draw() {
background(255);
fill(0,opacity);
text("black", 100, 100);
opacity -= 2;

fill(0, opacity2);
text("fade", 100,100);
opacity2 += 2;
            }
            
            
