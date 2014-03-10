//Combine two relational expressions with a logical operator to control the form 
// of a pattern

size(200,100);
for (int i = 10;i<width;i+=10){
  line(i,0,i,height);
if ((i>20)&&(i<90)){
  stroke(170);
} else {
  stroke(0);
}
}
