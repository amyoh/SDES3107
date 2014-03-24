//Use two different typefaces to display the dialog between two characters.

size(400,400);
background(0,240,220);

PFont font1 = loadFont("AmericanTypewriter-48.vlw");
PFont font2 = loadFont("AppleGothic-48.vlw");


String s = "Hello";

textFont(font1);
textSize(30);
fill(255);

text(s,10,40);
text("How are you?",10,120);
text("Great thanks!",10,200);

textFont(font2);
textSize(30);
fill(255,0,230);

text(s,10,80);
text("Well thank you, and you?",10,160);

