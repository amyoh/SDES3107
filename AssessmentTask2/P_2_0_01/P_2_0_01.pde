// P_2_0_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * creates a triangle that illustrates location of mouse and colour of pixels
 *    
 * MOUSE
 * position x/y        : fill colour of triangle
 * position y          : direction of arrow
 * 
 * KEYS
 * s                   : save png
 * p                   : save pdf
 */

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;
PImage pattern;

void setup(){
  size(410, 410); //Change to the size of the 'pattern' image
  
  pattern = loadImage("pattern.jpg");
  frameRate(15); //Sets the speed
}

void draw(){
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  
  smooth();
  background(255);
  tint(255,240);//Give images a slight transparency
  image(pattern,0,0);

  translate(width/2,height/2);

noStroke(); //Eliminate stroke

color pixelColour = get(mouseX,mouseY);
      fill(pixelColour,200); //pixel colour from the cursor coordinates determines fill colour of the triangle

float direction;

if (mouseY < width/2){
  direction = 1; //If the mouse is in the top half of the window, the arrow will point up
} else {
  direction = -1;// If the mouse is in the bottom half of the window, the arrow will point down
}  

  float radius = 150;
    float angle = TWO_PI/2;

    float xT = cos(angle) * radius;
    float yT = sin(angle) * radius;
    float xT2 = direction*(cos(1.5*angle) * radius);
    float yT2 = direction*(sin(1.5*angle) * radius);
    float xT3 = cos(2*angle) * radius;
    float yT3 = sin(2*angle) * radius;

triangle(xT3,yT3,xT,yT,xT2,yT2); 

  fill(255);
  for (int i=0; i<100; i++){
    float angle2 = TWO_PI/45;
    float x = cos(angle2*i) * radius;
    float y = sin(angle2*i) * radius;
    float x2 = cos(angle2*i+0.5*angle2) * radius;
    float y2 = sin(angle2*i+0.5*angle2) * radius;
    float x3 = cos(angle2*i+0.25*angle2)*(radius-10);
    float y3 = sin(angle2*i+0.25*angle2)*(radius-10);

triangle(x3,y3,x,y,x2,y2); 
  }

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void keyPressed() {
  if (key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
  if (key=='p' || key=='P') savePDF = true;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}



