//Load a GIF or PNG image with transparency and create a collage by layering 
// the image.

size(500,500); //Set display size to 500x500 pixels
PImage img = loadImage("kitten.png"); //Assign cat image to 'img'

for(int i=-100;i<250;i+=20){
image(img,i,i,width,height);
} //Repeat cat image
