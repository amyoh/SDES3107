//Use HSB color and a for structure to design a gradient between two colors.

colorMode(HSB,360,100,100);

for(int i=0;i<width;i++){
  stroke(100+i,40,100);
  line(i,0,i,height);
}

