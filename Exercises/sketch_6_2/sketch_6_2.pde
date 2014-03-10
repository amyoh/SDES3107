//Draw a dense pattern by embedding two for structures


noFill();

for(int a=0;a<100;a+=10){
for(int b=0;b<100;b+=10){
  stroke(255-a);
  rect(a, b, 5, 5);
}
}
