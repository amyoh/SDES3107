//Load an image and use mouseX and mouseY to read the value of the pixel beneath 
// the cursor. Use this value to change some aspect of the image

PImage adventureTime;
PImage zoom;

void setup(){
  adventureTime = loadImage("adventure-time.png");
    size(adventureTime.width,adventureTime.height);
}

void draw(){
background(255);
  image(adventureTime,0,0);
  zoom = get(mouseX,mouseY,50,50);
  image(zoom,20,20,100,100);
  color pixelColour = get(mouseX, mouseY);
fill(pixelColour);
ellipse(mouseX,mouseY,50,50);
}
