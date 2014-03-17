//Draw a complex curved shape of your own design using bezierVertex().
size(100,100);
background(0);

noFill();
stroke(255);

beginShape();
curveVertex(0,80);
curveVertex(10,80);
curveVertex(30,40);
curveVertex(50,70);
curveVertex(70,60);
curveVertex(90,100);
curveVertex(90,100);
endShape();
