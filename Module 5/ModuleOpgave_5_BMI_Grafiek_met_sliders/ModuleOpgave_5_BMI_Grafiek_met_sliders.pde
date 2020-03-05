//ModuleOpgave_5_BMI_Grafiek_met_sliders

//import controlP5.*;
//ControlP5 theControl;

int sliderPositionHeight = 1;
int sliderPositionWeight = 1;

int numberOfSliderPositions;
final float sliderX = 70;
final float sliderWidth = 300;
final float sliderHeight = 50;

void setup() {
  size(800, 800);
  smooth();
 // theControl = new ControlP5(this);
  //createNumberBoxes(theControl);
} //<>//

void draw() {
  background(0); //<>//
  sliderForHeight(); //<>//
  sliderForWeight(); //<>//
  float scale_factor = height/2 / 33; //<>//
  if (sliderPositionWeight < 1 || sliderPositionHeight < 1){ //getypt om wat te proberen --> werkt wanneer op line 30 geen /10 staat, anders zelfde probleem
    sliderPositionWeight = 1;
    sliderPositionHeight = 1;
  }
  float BMI = sliderPositionWeight / ((sliderPositionHeight/10)*(sliderPositionHeight/10)); //<>//
  //float BMI =  leesGewicht()/(sq(leesLengte()/100));
  scalingBG(scale_factor);
  drawBMIbar(scale_factor, BMI);
  prntBMI(BMI);
  println(BMI);
  println("lengte:" + sliderPositionHeight);
  println("gewicht: " + sliderPositionWeight);
} //<>//

void sliderForHeight() {
  final float sliderY = 150;
  numberOfSliderPositions = 211;
  if (mouseY > sliderY && mouseY < sliderY + sliderHeight){
  sliderPositionHeight = determinePosition(sliderX, sliderWidth, numberOfSliderPositions);
  } //Ik denk dat hier het probleem zit met dat ie door 0 wil delen. 
  drawSlider(sliderX, sliderY, sliderWidth, sliderHeight, sliderPositionHeight, numberOfSliderPositions);
  text("Height in cm: " + sliderPositionHeight, sliderX, sliderY + sliderHeight + 25);
}

void sliderForWeight() {
  final float sliderY = 250;
  numberOfSliderPositions = 121;
  if (mouseY > sliderY && mouseY < sliderY + sliderHeight){
  sliderPositionWeight = determinePosition(sliderX, sliderWidth, numberOfSliderPositions);
  } //Ik denk dat hier het probleem zit met dat ie door 0 wil delen.
  drawSlider(sliderX, sliderY, sliderWidth, sliderHeight, sliderPositionWeight, numberOfSliderPositions);
  text("Weight in KG: " + sliderPositionWeight, sliderX, sliderY + sliderHeight + 25);
}


void drawBMIbar(float scale_factor, float BMI) {
  fill(#FFC0CB);
  stroke(#FFC0CB);
  rect(width/2 - 50, height - (BMI*scale_factor), 100, BMI*scale_factor);
}


void scaleLine(float x, String y) {
  line(0, height - x, width, height - x); 
  textSize(8);
  fill(255);
  text(y, 10, height - x + 10);
}

void scalingBG(float scale_factor) {
  //background(0);
  stroke(#00FF00);
  scaleLine(18.5 * scale_factor, "Ondergewicht"); 
  scaleLine(25 * scale_factor, "Normaal Gewicht");
  stroke(#FF0000);
  scaleLine(30 * scale_factor, "Overgewicht"); 
  text("Obees", 10, height - (30 + 5)*scale_factor);
}

void prntBMI(float x) {
  fill(255);
  int txtSize = 20;
  textSize(txtSize);
  text(x, 10, txtSize* 2); //don't know how to cap the float decimals to less than 3 (want it at 1) (so I want to round the decimals)
}

/*
  Next Time
  
  You are nearly there! you are having a zero division error which probably leads back
  to the determinePosition() function.
  Take a look there where 0 enters the game and messes everything up.
  Once you get that under controle the formula needs an extra look.
  And once everything is working start cleaning up: The controlP5 is no longer needed! E.g.
  
  After that take a close look at the prereqs of the assignment, e.g. you are starting
  your height at 1 or 0 instead of at the prereq number of cm.
  
  Make everything pretty and you should be done with this one.
*/
/* 
 PREVIOUS time
 
 Start by taking a look at how to get the slider function in the library to 
 work in this new file...
 You can compare to Screencast_5_5 because it is working there.
 
 BMI code also needs to be in a seperate tab (library)
 Reuse the code from the BMI file!! This is obligatory
 
 After you have succesfully worked that out you can start on writing the 
 pseudo code or otherwise start with writing down the functions you 
 think you need to run this.
 
 Go through the 3 parts of this Assignment
 
 part 1:
 Make an analysis of all needed parts and write these down in a programme design
 Think of variables, functions, etc
 
 part 2:
 Think of what could go wrong while when using the programme (edge cases?)
 Design test cases
 
 part 3:
 Implement the programme according to your design in part 1 (and of course use
 results from part 2 for this).
 
 */
