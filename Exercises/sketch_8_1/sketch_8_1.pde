//Draw the curve y = 1-x4 to the display window

for(int x=0;x<100;x++){
  float n = norm(x,0.0,100.0);
  float y = 1-pow(n,4);
  y *= 100;
  point(x,y);
}
