//Unit 3 checkpoint #1
//Jody Wang 2-3
//Feb 27 2025

//pallette of colors 
color lightblue = #C7E1FA;
color darkblue  = #28517F;
color cream     = #f8ead1;
color white     = #efefef;
color greyblue  = #acc5d1;

//variables for color selection
color selectedColor;

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(greyblue);
  selectedColor = darkblue;//initialize selected color variable
} // setup end---------------------------

void draw() {
  background(cream);
  
  //buttons
  fill(white);
  circle(700, 100, 100);
  
  fill(lightblue);
  circle(700, 300, 100);
  
  fill(darkblue);
  circle(700, 500, 100);
  
  //indicator
  fill(selectedColor);
  square(100, 100, 400);
  
} // draw end-----------------------------


void mouseReleased() {
 //white button
  if (dist(700, 100, mouseX, mouseY) < 50) { //means if the distance between the mousepointer and the center of circle is less than 50
    selectedColor = white;
  }
  
  //lightblue button
  if (dist(700, 300, mouseX, mouseY) < 50) {
    selectedColor = lightblue;
  }
  
  //darkblue
  if (dist(700, 500, mouseX, mouseY) < 50) {
    selectedColor = darkblue;
  }
} // end mouseReleased--------------
