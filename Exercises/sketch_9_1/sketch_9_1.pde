//Explore a wide range of color combinations within one composition.

for(int i=0;i<width;i++){
  stroke(100+i,0,240);
  line(i,0,i,50);
}

for(int i=0;i<width;i++){
  stroke(50,100+i,240);
  line(i,50,i,100);
}
