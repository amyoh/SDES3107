//Use the data from the curve y=x8 to draw something unique.

noFill();
stroke(255);

for(int x=0;x<100;x++){
  float n = norm(x,0.0,100.0);
  float y = pow(n,8);
  y *= 100;
  ellipse(x,y,30,30);
}
