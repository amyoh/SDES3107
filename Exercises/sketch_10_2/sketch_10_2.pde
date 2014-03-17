//Draw three images in the display window, each with a different tint.

size(700,400);


PImage img = loadImage("kitten.jpg");
tint(200,0,0);
image(img,0,0,width/3,height);

PImage img2 = loadImage("kitten2.jpg");
tint(0,200,200);
image(img2,width/3,0,width/3,height);

PImage img3 = loadImage("kitten3.jpg");
tint(255,50,255);
image(img3,2*width/3,0,width/3,height);
