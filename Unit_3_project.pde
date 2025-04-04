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
float thickness;

PImage toothless;
void setup() {
  size(900, 800);
  strokeWeight(4);
  stroke(white);
  background(white);
  toothless = loadImage("toothless.png");
  sliderX = 25;
  thickness = 4;
  selectedColor = black;
} //------------------END OF SETUP--------------------------------- 

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
  
 //stamp
 stroke(50, 98, 155);
 strokeWeight(6);
  rect(18, 442, 160, 134);
image(toothless, 1, 442, 200, 120);

  //slider
  stroke(0);
  strokeWeight(10);
  line(25, 340, 170, 340);
  strokeWeight(4);
  fill(255);
  circle(sliderX, 340, 18);

  //indicator for color
  noStroke();
  fill(selectedColor);
  rect(25, 400, 145, 20);

  // indicator for thickness
  stroke(0);
  strokeWeight(thickness);
  line(25, 370, 170, 370);
  
  //line
  fill(selectedColor);

} //-------------------END OF DRAW--------------------------------

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

  if (mouseX > 25 && mouseX < 170 && mouseY > 300 && mouseY < 400 ) {
    thickness = sliderX;
    thickness = map(sliderX, 25, 170, 4, 30);
  }

} //--------------------------end of control slider-----------------------------

void mouseDragged() {
  controlSlider();

  if (mouseX > 200 && mouseX < 900 && mouseY > 0 && mouseY < 800) {
    stroke(selectedColor);
    strokeWeight(thickness);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
} //-------------------------end of mouseDragged---------------------------
