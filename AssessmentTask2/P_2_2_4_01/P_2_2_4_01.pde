// P_2_2_4_01.pde
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
 * Draws concentric rings of ellipses of random radii and saturation
 *    
 * MOUSE
 * position x          : the amount of ellipses in a ring
 * position y          : the distance between concentric rings
 * 
 * KEYS
 * s                   : save png
 * p                   : save pdf
 */

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;
PImage hand;

void setup() {
  size(2448/4,2612/4); //Changes the size of the window to be proportional to the 'hand' image
  smooth();
  frameRate(10);
  
hand = loadImage("hand.jpg"); //Assigns image to 'hand'
     
  noStroke(); //Eliminates stroke weight
  colorMode(HSB,359,100,100,100);
}

void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  background(255);
  
image(hand, 0,0,width,height); //Inserts image to full window size

fill(215,0,100);
ellipse(368,268,30,30); //Draws a white ellipse at the fingertip

  fill(215,0,100,50);
  ellipse(368,268,50,50); //Draws a transparent ellipse

  float newR = random(1,20);

  int randomSaturation = int(random(0,100));
  fill(215,randomSaturation,100,50); //Applies random saturation to the ellipses

int radiusDifference = 5;

//Creates concentric rings, made up of ellipses
  for (float r=50;r<width; r+=radiusDifference) {

    r+=map(mouseY,0,height,0,50); // The y-position of the cursor determines the distance between concentric rings
  
    int count = int(map(mouseX,0,width,0,100)); //The x-position of the cursor determines the amount of ellipses in a ring
    float angle = radians(360/float(count));
  
    for (int i=0;i<count;i++) { 
      float xPos = 368 + cos(angle*i)*r;
      float yPos = 268 + sin(angle*i)*r;
  
      ellipse(xPos,yPos,newR,newR); 
    }
  }

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
