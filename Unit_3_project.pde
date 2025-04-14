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
boolean stampOn = true;

void setup() {
  size(900, 800);
  strokeWeight(4);
  stroke(white);
  background(white);
  toothless = loadImage("toothless.png");
  sliderX = 25;
  thickness = 4;
  selectedColor = black;
  stampOn = false;
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
  stampOnOff();
  if (stampOn) {
    fill(blue); //active = blue
  } else {
    fill(lightblue);
  }

  rect(18, 442, 160, 134);
  imageMode(CENTER);
  image(toothless, 100, 500, 200, 120);

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

  //new button
  strokeWeight(5);
  fill(247, 165, 165);
  rect(18, 600, 160, 40);
  PFont newFont;
  newFont = loadFont("EngraversMT-40.vlw");
  textFont(newFont);
  fill(255);
  text("New", 34, 633);

  //load button
  fill(199, 165, 247);
  rect(18, 670, 160, 40);
  PFont loadFont;
  loadFont = loadFont("EngraversMT-40.vlw");
  textFont(loadFont);
  fill(255);
  text("load", 30, 704);

  //save button
  fill(175, 175, 175);
  rect(18, 740, 160, 40);
  PFont saveFont;
  saveFont = loadFont("EngraversMT-40.vlw");
  textFont(saveFont);
  fill(255);
  text("save", 30, 774);

  stroke(0);
  fill(selectedColor);
  strokeWeight(thickness);
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

  //stamp
  if (mouseX > 18 && mouseX < 178 && mouseY > 442 && mouseY < 576) {
    stampOn = !stampOn;
  }
  if (mouseX > 240) {
    if (stampOn == true) {
      image(toothless, mouseX, mouseY, 300, 200);
    } else {
      //squiggly line
      if (mouseX > 400 && mouseX < 900 && mouseY > 0 && mouseY < 800) {
        stroke(selectedColor);
        strokeWeight(thickness);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    }
  }
  //slider
  controlSlider();

  //new button
  if (mouseX > 18 && mouseX < 178 && mouseY > 600 && mouseY < 640) {
    fill(white);
    stroke(white);
    rect(200, 0, 700, 800);
  }
  //load button
  if (mouseX > 18 && mouseX < 178 && mouseY > 670 && mouseY < 710) {
    selectInput("Pick an image to load", "openImage");
  }
  //save button
  if (mouseX > 18 && mouseX < 178 && mouseY > 740 && mouseY < 780) {
    selectOutput("Choose a name for your new image file", "saveImage");
  }
}//------------------------end of mouseReleased-----------------------------

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get( 71, 1, 71, 1);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f != null) {
    //KLUDGE
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n = n + 1;
    }
  }
}

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
  //squiggly line
  if (mouseX > 200 && mouseX < 900 && mouseY > 0 && mouseY < 800) {
    stroke(selectedColor);
    strokeWeight(thickness);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  if (mouseX > 260) {
    if (stampOn == true) {
      //stamp drawing
      image(toothless, mouseX, mouseY, 300, 200);
    } else {
      //squiggly line
      if (mouseX > 200 && mouseX < 900 && mouseY > 0 && mouseY < 800) {
        stroke(selectedColor);
        strokeWeight(thickness);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
    }
  }
} //-------------------------end of mouseDragged---------------------------

void stampOnOff() {
  if (stampOn == true) {
    stroke(50, 98, 155);
    strokeWeight(6);
  } else {
    stroke(139, 176, 193);
    strokeWeight(4);
  }
} //------------------end of stampOnoff---------------------------------------
