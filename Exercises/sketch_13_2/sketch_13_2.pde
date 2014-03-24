//Draw a paragraph of text to the display window. Carefully select the composition.

size(500,500);
background(255,190,0);

PFont font = loadFont("MshtakanBoldOblique-48.vlw");
textFont(font);

textSize(16);
textLeading(20);
textAlign(CENTER);
String s = "As our feet sink in the snow, We build a snowman no one will know, For the snow will melt away, as the night turns to day";
text(s,160,160,190,190);

