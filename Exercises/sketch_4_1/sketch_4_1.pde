//Use one variable to set the position and size for three ellipses.

size(500,500);
background(0);

int value = 50;

ellipse(value,value,value/2,value/2);

value = 2*value;
println(value);
ellipse(value,value,value/2,value/2);

ellipse(value*2,value*2,value/6,value/6);

