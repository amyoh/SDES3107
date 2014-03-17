//Load a GIF or PNG image with transparency and create a collage by layering 
// the image.

size(500,500);
PImage img;
img = loadImage("kitten.png");


for(int i=-100;i<250;i+=20){
image(img,i,i++,width,height);
}
