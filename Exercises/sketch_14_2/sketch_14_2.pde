//Explore drawing circles and arcs with sin() and cos(). Develop a composition 
// from the results of the exploration.


size(200,200);
            smooth();
            int radius = 38;
            for (int deg = 0; deg < 360; deg += 12) {
              float angle = radians(deg);
              float x = 50 + (cos(angle) * radius);
              float y = 50 + (sin(angle) * radius);
              strokeWeight(8);
              stroke(0,40);
              line(x, y,x+100,y+100);
}


noStroke();
smooth();
for(int a = 0;a<=100;a += 20){
  for (int deg2 = 135;deg2<315;deg2 +=12){
    float angle2 = radians(deg2);
    float x = 50 + (cos(angle2)*radius);
    float y = 50 + (sin(angle2)*radius);
    strokeWeight(4);
    stroke(100,0,255);
    point(x+a,y+a);
  }
}
