//Use three variables assigned to random values to create a composition that is 
// different every time the program is run.

size(300,300);
background(255);
noStroke();


for (int i=0;i<300;i++){
  int colour = int(random(255));
  int pos = int(random(300));
  int transparency = int(random(255));
  fill(0,0,colour,transparency);
  ellipse(i,pos,10,10);
}

