//Use pushMatrix() and popMatrix() to rearrange the composition from exercise 2.

pushMatrix();
translate(0,20);//Moves rectangle and ellipse down 20
rect(0,0,50,50);//Draws a rectangle
pushMatrix();
translate(20,0);//Moves ellipse across 20
ellipse(20,20,10,10);//Draws an ellipse
popMatrix();
rect(30,50,20,20);//Draws a rectangle (not translated)
