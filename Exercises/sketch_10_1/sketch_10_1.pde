//Draw two images in the display window

size(700,400);


PImage img = loadImage("kitten.jpg");
image(img,0,0,width/2,height);

PImage img2 = loadImage("kitten2.jpg");
image(img2,width/2,0,width/2,height);
