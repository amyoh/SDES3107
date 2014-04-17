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
 * looping a shape as it grows in number of sides
 *    
 * KEYS
 * s                   : save png
 * p                   : save pdf
 */

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;
PImage pattern;
int count = 2;


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

        count++; //The number of sides on the shape increases
  if (count == 15){
  count=0;
  } //Repeat once the number of sides reaches 15
   
noStroke(); //Eliminate stroke

  float radius = 150;

  fill(120,130,200,50);
  for (int i=0; i<100; i++){
    float angle = TWO_PI/count;
    float x = cos(angle*i) * radius;
    float y = sin(angle*i) * radius;
    float x2 = cos(angle*i+angle) * radius;
    float y2 = sin(angle*i+angle) * radius;

triangle(0,0,x,y,x2,y2); 
  }
  
  fill(255);
  for (int i=0; i<100; i++){
    float angle = TWO_PI/45;
    float x = cos(angle*i) * radius;
    float y = sin(angle*i) * radius;
    float x2 = cos(angle*i+0.5*angle) * radius;
    float y2 = sin(angle*i+0.5*angle) * radius;
    float x3 = cos(angle*i+0.25*angle)*(radius-10);
    float y3 = sin(angle*i+0.25*angle)*(radius-10);
//A point on the triangles changes from 0,0 to 10pixels from the circumference of the circle
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



