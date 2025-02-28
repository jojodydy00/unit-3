//Jody Wang 
//Bl 2-3 Feb 28 2025

//pallette of colors 
color matcha     = #c3c8a5;
color white      = #f8f2e2;
color cream      = #F4EAC5;
color lightgreen = #9eb484;
color green      = #445232;

//variabls for color selection
color selectedColor;

void setup () {
  size(800, 600);
  strokeWeight(5);
  stroke(matcha);
  selectedColor = green;
} //-----------------end of setup----------------

void draw() {
  background(white);
  
  //buttons
  fill(cream);
  circle(150, 100, 100);
  
  fill(lightgreen);
  circle(400, 100, 100);
  
  fill(green);
  circle(650, 100, 100);
  
  //indicator
  fill(selectedColor);
  square(200, 170, 400);
} //----------------end of draw----------------------

void mouseReleased() {
  //cream button
  if (dist(150, 100, mouseX, mouseY) < 50) {
    selectedColor = cream;
  }
  
  //lightgreen button 
} // --------------end of mouseReleased---------------
