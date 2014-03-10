//Draw a regular pattern with ﬁ ve lines. Rewrite the code using a for structure

/* a regular pattern with five lines
line(10,10,10,50);
line(20,10,20,50);
line(30,10,30,50);
line(40,10,40,50);
line(50,10,50,50);
*/

for(int i = 10;i<55;i+=10){
  line(i,10,i,50);
}
