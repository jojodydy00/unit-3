// Jody Wang
//Bl 2-3 March 3rd 2025
//Unit 3-Checkpoint 3 =slider

//pallette
color red = #AA4761;
color pink = #C58997;
color background = #ECD2CF;

float sliderY;
float shade;

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderY = 100;
}

void draw() {
  background(shade);
  
  shade = map(sliderY, 100, 500, 0, 225);
   
  line(400, 100, 400, 500);
  fill(red);
  circle(400, sliderY, 50);
}

void mouseDragged() {
 controlSlider();
}

void mouseReleased() {
 controlSlider();
}

void controlSlider() {
  if (mouseY > 100 && mouseY < 500) {
   sliderY = mouseY;
}
}
