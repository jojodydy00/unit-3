//Jody Wang
//Bl 2-3
//Unit3 project

//pallette of color
color red = #EF988A;
color pink = #EBA1AE;
color orange = #EC8252;
color cream = #F3E6BA;
color green = #B2BC8A;
color lightblue = #DAEAFF;
color blue = #83A1C7;
color brown = #B5867A;
color white = #FFFFFF;
color black = #050505;
color selectedColor;

void setup() {
  size(900, 800);
  strokeWeight(4);
  stroke(white);
  background(white);
  selectedColor = black;
} //------------------END OF SETUP------------------
  
void draw() { //contron pannel
  stroke(brown);
  fill(cream); //background
  rect(0, 0, 200, 800); //pannel 
  //color buttons 
  //red
  stroke(0);
  fill(red);
  circle(50, 50, 50);
  //orange
  fill(orange);
  circle(50, 150, 50);
  //lightblue
  fill(lightblue);
  circle(50, 250, 50);
  //pink
  fill(pink);
  circle(145, 50, 50);
  //green
  fill(green);
  circle(145, 150, 50);
  //blue
  fill(blue);
  circle(145, 250, 50);
  
  //indicator 
  noStroke();
  fill(selectedColor);
  rect(25, 400, 145, 20);
  
  //line
  fill(selectedColor);
} //-------------------END OF DRAW------------------
void mouseReleased() {
  //red button
  if(dist(50, 50, mouseX, mouseY) < 50) {
  selectedColor = red;
  }
  
  //pink button
  if(dist(145, 50, mouseX, mouseY) < 50) {
   selectedColor = pink;
  }
}

void mouseDragged() {
  stroke(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY);
}
