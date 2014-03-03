//Use multiplication to create a series of lines with increasing space between each.

int screenWidth = 500;

size(screenWidth*2,screenWidth);
background(30,90,100);

float position = 10;

stroke(255);
line(position,0,position,height);

position = position*2.5;
println(position);
line(position,0,position,height);

position = position*2.5;
println(position);
line(position,0,position,height);

position = position*2.5;
println(position);
line(position,0,position,height);

position = position*2.5;
println(position);
line(position,0,position,height);

position = position*2.5;
println(position);
line(position,0,position,height);



for(float position = 10; position
