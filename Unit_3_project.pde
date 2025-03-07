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

float sliderX;

void setup() {
  size(900, 800);
  strokeWeight(4);
  stroke(white);
  background(white);
  sliderX = 100;
  selectedColor = black;
} //------------------END OF SETUP------------------

void draw() { //contron pannel
  strokeWeight(4);
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

  //slider
  strokeWeight(10);
  line(25, 340, 170, 340);
  strokeWeight(4);
  fill(255);
  circle(sliderX, 340, 18);

  //indicator
  noStroke();
  fill(selectedColor);
  rect(25, 400, 145, 20);

  //line
  fill(selectedColor);
} //-------------------END OF DRAW------------------

void mouseReleased() {
  //red button
  if (dist(50, 50, mouseX, mouseY) < 50) {
    selectedColor = red;
  }

  //pink button
  if (dist(145, 50, mouseX, mouseY) < 50) {
    selectedColor = pink;
  }

  //orange button
  if (dist(50, 150, mouseX, mouseY) < 50) {
    selectedColor = orange;
  }

  //green button
  if (dist(145, 150, mouseX, mouseY) < 50) {
    selectedColor = green;
  }

  //lightblue button
  if (dist(50, 250, mouseX, mouseY) < 50) {
    selectedColor = lightblue;
  }

  //blue button
  if (dist(145, 250, mouseX, mouseY) < 50) {
    selectedColor = blue;
  }

  //slider
  controlSlider();
} //------------------------end of mouseReleased-----------------------------

void controlSlider() {
  if (mouseX > 25 && mouseX < 170 && mouseY > 320 && mouseY < 350 ) {
    sliderX = mouseX;
  }
}

void mouseDragged() {
  controlSlider();

  stroke(selectedColor);
  strokeWeight(4);
  line(pmouseX, pmouseY, mouseX, mouseY);
} //-------------------------end of mouseDragged---------------------------
