//Write your own function to draw a parameterized arch

float c = 25.0; // curvature

void setup() {
size(100, 100);
smooth();
noLoop();
}

void draw() {
pArch(c); //function to draw parameterized arch
}

void pArch(float curvature) { //create pArch function

strokeWeight(4);
noFill();
stroke(200,0,200);

beginShape();
vertex(10.0, 10.0);
bezierVertex(10.0, 10.0+curvature, 30.0, 50.0, 50.0, 50.0);
bezierVertex(70.0, 50.0, 90.0, 10.0+curvature, 90.0, 10.0);
endShape();

}
