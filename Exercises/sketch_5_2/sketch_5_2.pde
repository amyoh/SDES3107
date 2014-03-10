//Create a composition with a series of lines and ellipses. Use an if structure to select 
// which lines of code to run and which to skip


int x = 100;

if(x<100){
  line(20,20,20,50);
}
if(x>=100){
  ellipse(50,50,20,20);
}

line(10,10,50,50);
