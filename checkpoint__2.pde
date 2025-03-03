//Jody Wang 
//Bl 2-3 Feb 28 2025
//unit 3-checkpoint 2

//pallette of colors 
color matcha     = #c3c8a5;
color white      = #f8f2e2;
color cream      = #F4EAC5;
color lightgreen = #9eb484;
color green      = #445232;
color darkgreen  = #2A3E2D;
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
  square(80, 50, 100);
  
  fill(lightgreen);
  square(270, 50, 100);
  
  fill(green);
  square(480, 50, 100);
  
  fill(darkgreen);
  square(660, 50, 100);
  
  //indicator
  fill(selectedColor);
  circle(400, 380, 400);
} //----------------end of draw----------------------

void mouseReleased() {
  //cream button
  if (dist(80, 50, mouseX, mouseY) < 100) {
    selectedColor = cream;
  }
  
  //lightgreen button 
  if(dist(270, 50, mouseX, mouseY) < 100) {
    selectedColor = lightgreen;
  } 
  
  //green button 
  if(dist(480, 50, mouseX, mouseY) < 100) {
    selectedColor = green;
  }
  
  //darkgreen button
  if(dist(660, 50, mouseX, mouseY) < 100) {
    selectedColor = darkgreen;
  } //-------------------------------end of void mouseReleased-------------
   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  //lightgreen button 
} // --------------end of mouseReleased---------------
