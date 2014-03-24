//Create a composition with the data generated using sin()



size(700, 100);
background(255);
noStroke();
smooth();
fill(255,0,0);

float offset = 40.0;
float scaleVal = 35.0;
float angleInc = PI/30.0;
float angle = 0.0;
for (int x = 0; x <= width; x += 5) {
  float y = offset + (sin(angle) * scaleVal);
  rect(x, y, 2, 20);
  angle += angleInc;
}

fill(0,0,255);
float angle2 = HALF_PI;
for (int x = 0; x <= width; x += 5) {
  float y = offset + (sin(angle2) * scaleVal);
  rect(x, y, 2, 20);
  angle2 += angleInc;
}

fill(255,0,255);
float angle3 = PI;
for (int x = 0; x <= width; x += 5) {
  float y = offset + (sin(angle3) * scaleVal);
  rect(x, y, 2, 20);
  angle3 += angleInc;
}

fill(255,200,0);
float angle4 = PI + HALF_PI;
for (int x = 0; x <= width; x += 5) {
  float y = offset + (sin(angle4) * scaleVal);
  rect(x, y, 2, 20);
  angle4 += angleInc;
}
