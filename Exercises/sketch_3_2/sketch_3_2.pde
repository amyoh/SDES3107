//Make a few int and float variables. Try assigning them in different ways. Write the 
// values to the console with println().

int screenWidth = 300;
float pos = 75.5;

println(screenWidth);
println(pos);

size(screenWidth,screenWidth*2);
background(0,90,100);

stroke(255);
ellipse(pos,pos,screenWidth/5,screenWidth/5);

pos = 2*pos;
print(pos);

stroke(100,0,50);
line(pos,pos,300,300);
